import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import '../core/vault.dart';
import '../database/database.dart';
import '../settings/settings_providers.dart';
import 'wallet_types.dart';
import 'wallet_vault.dart';

const _kWalletEntriesKey = '_kWalletEntriesKey';
const _kSelectedWalletKey = '_kSelectedWalletKey';

extension WalletSettings on SettingsRepository {
  List<WalletInfo>? getWalletEntries() {
    final walletEntries = box.tryGetList<WalletInfo>(
      _kWalletEntriesKey,
      typeFactory: WalletInfo.fromJson,
    );
    return walletEntries;
  }

  Future<void> setWalletEntries(List<WalletInfo> entries) => box.setList(
        _kWalletEntriesKey,
        entries,
        convert: <WalletInfo>(e) => (e as dynamic).toJson(),
      );

  WalletInfo? getSelectedWallet() =>
      box.tryGet(_kSelectedWalletKey, typeFactory: WalletInfo.fromJson);

  Future<void> setSelectedWallet(WalletInfo? wallet) =>
      box.set(_kSelectedWalletKey, wallet);
}

class WalletRepository {
  final SettingsRepository settings;
  final Vault vault;

  const WalletRepository(this.settings, this.vault);

  WalletVault vaultForWallet(WalletInfo wallet) =>
      WalletVault(wallet.wid, vault);

  WalletBundle get walletBundle => WalletBundle(
        wallets: settings.getWalletEntries()?.lock,
        selected: settings.getSelectedWallet(),
      );

  Future<void> updateWallets(IList<WalletInfo> entries) =>
      settings.setWalletEntries(entries.unlock);

  Future<void> updateSelected(WalletInfo? wallet) =>
      settings.setSelectedWallet(wallet);

  Future<void> openWallet(WalletInfo wallet) async {
    // open wallet boxes
    await Database.openBox<Account>(
      wallet.accountsBoxKey,
      encryptionKey: wallet.accountsEncryptionKey,
    );

    await Database.openBox<AccountInfo>(
      wallet.accountInfoBoxKey,
      encryptionKey: wallet.accountInfoEncryptionKey,
    );
  }

  Future<void> closeWallet(WalletInfo wallet) async {
    // close wallet boxes
    await Database.closeBox<Account>(wallet.accountsBoxKey);
    await Database.closeBox<AccountInfo>(wallet.accountInfoBoxKey);
  }
}
