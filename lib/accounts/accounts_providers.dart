import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../database/boxes.dart';
import '../database/database.dart';
import '../wallet/wallet_types.dart';
import 'account.dart';
import 'account_selection.dart';
import 'accounts_notifier.dart';

export 'account_info_provider.dart';

final _accountsBoxProvider =
    Provider.autoDispose.family<TypedBox<Account>, WalletInfo>((ref, wallet) {
  final db = ref.watch(dbProvider);
  return db.getTypedBox<Account>(wallet.accountsBoxKey);
});

final _accountSelectionBoxProvider =
    Provider.autoDispose.family<GenericBox, WalletInfo>((ref, wallet) {
  final db = ref.watch(dbProvider);
  return db.getGenericBox(kSettingsBox);
});

final _accountSelectionProvider =
    Provider.autoDispose.family<AccountSelection, WalletInfo>((ref, wallet) {
  final box = ref.watch(_accountSelectionBoxProvider(wallet));
  return AccountSelection(box: box, key: wallet.selectionKey);
});

final accountsProvider = ChangeNotifierProvider.autoDispose((ref) {
  final wallet = ref.watch(walletProvider);

  final accountsBox = ref.watch(_accountsBoxProvider(wallet));
  final selection = ref.watch(_accountSelectionProvider(wallet));
  final mainAddress = Address.fromPublicKey(hexToBytes(wallet.publicKey));
  final maxAccounts = ref.watch(maxAccountsProvider);

  final notifier = AccountsNotifier(
    accountsBox: accountsBox,
    selection: selection,
    mainAddress: mainAddress,
    maxAccounts: maxAccounts,
  );

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});

final selectedAccountProvider = Provider.autoDispose((ref) {
  return ref.watch(
    accountsProvider.select((value) => value.selected),
  );
});

final selectedAddressProvider = Provider.autoDispose((ref) {
  return ref.watch(
    selectedAccountProvider.select((value) => value.address),
  );
});

final recentLastAccountProvider = Provider.autoDispose((ref) {
  return ref.watch(
    accountsProvider.select((value) => value.recentLast),
  );
});

final recentSecondLastAccountProvider = Provider.autoDispose((ref) {
  return ref.watch(
    accountsProvider.select((value) => value.recentSecondLast),
  );
});
