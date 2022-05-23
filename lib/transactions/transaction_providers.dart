import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

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

  ref.listen(newAccountBlockProvider(pair.account.address),
      (_, __) => notifier.refresh());

  ref.listen(snapshotTickerProvider, (_, __) => notifier.refreshUnconfirmed());

  return notifier;
});

final confirmationStatusProvider =
    Provider.autoDispose.family<TxState, AccountBlock>((ref, accountBlock) {
  const kNoConfirmations = 150;
  if ((accountBlock.confirmations?.toInt() ?? 0) > kNoConfirmations) {
    return const TxState.confirmed();
  }
  final asyncValue = ref.watch(snapshotTickerProvider);
  final message = asyncValue.value;
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
