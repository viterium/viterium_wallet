import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import '../app_providers.dart';
import 'transaction_history_notifier.dart';
import 'transaction_types.dart';

final transactionHistoryProvider = ChangeNotifierProvider.autoDispose
    .family<TransactionHistoryNotifier, AccountTokenPair>((ref, pair) {
  final client = ref.watch(viteClientProvider);
  final log = ref.watch(loggerProvider);

  final notifier = TransactionHistoryNotifier(
    account: pair.account,
    token: pair.token,
    client: client,
    log: log,
  );

  ref.listen<AsyncValue<RpcAccountBlockWithHeightMessage>>(
      newAccountBlockProvider(pair.account.address), (_, next) {
    final message = next.asData?.value;
    if (message != null && message.removed) {
      final hash = Hash.tryParse(message.hash);
      if (hash != null) {
        notifier.remove(hash);
      }
    }
    notifier.refresh();
  });

  ref.listen(snapshotTickerProvider, (_, __) => notifier.refreshUnconfirmed());

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});

final txHistoryForAccountProvider = Provider.autoDispose
    .family<TransactionHistoryNotifier, Account>((ref, account) {
  final pair = AccountTokenPair(account: account);
  final txHistory = ref.watch(transactionHistoryProvider(pair));
  return txHistory;
});

final selectedTxHistoryProvider = Provider.autoDispose((ref) {
  final account = ref.watch(selectedAccountProvider);
  final pair = AccountTokenPair(account: account);
  final notifier = ref.watch(transactionHistoryProvider(pair));
  return notifier;
});

final confirmationStatusProvider =
    Provider.autoDispose.family<TxState, AccountBlock>((ref, accountBlock) {
  const kNoConfirmations = 150;
  if ((accountBlock.confirmations?.toInt() ?? 0) > kNoConfirmations) {
    return const TxState.confirmed();
  }
  final asyncValue = ref.watch(snapshotTickerProvider);
  final message = asyncValue.asData?.value;
  if (message == null) {
    return const TxState.unknown();
  }
  final snapshotHeight = int.tryParse(message.height);
  final height = accountBlock.firstSnapshotHeight;
  if (snapshotHeight == null || height == null) {
    return const TxState.unconfirmed();
  }

  final confirmations = snapshotHeight - height;
  final confirmed = confirmations > kNoConfirmations;
  if (confirmed) {
    return const TxState.confirmed();
  }
  if (confirmations < 2) {
    return const TxState.unconfirmed();
  }
  return TxState.confirming(confirmations);
});
