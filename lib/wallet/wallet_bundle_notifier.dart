import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../database/database.dart';
import '../util/random_util.dart';
import '../util/vite_util.dart';
import 'wallet_repository.dart';
import 'wallet_types.dart';
import 'wallet_vault.dart';

class WalletBundleNotifier extends StateNotifier<WalletBundle> {
  final WalletRepository repository;

  WalletBundleNotifier(this.repository) : super(repository.walletBundle);

  Future<void> _updateSelectedWallet(WalletInfo? wallet) async {
    await repository.updateSelected(wallet);
    state = state.copyWith(selected: wallet);
  }

  Future<void> _updateWallets(IList<WalletInfo> wallets) async {
    await repository.updateWallets(wallets);
    state = state.copyWith(wallets: wallets);
  }

  Future<void> selectWallet(WalletInfo wallet) => _updateSelectedWallet(wallet);

  Future<void> logout() async {
    final wallet = state.selected;
    if (wallet == null) {
      return;
    }

    await repository.closeWallet(wallet);
    // clear selection
    await _updateSelectedWallet(null);
  }

  Future<void> addWallet(WalletInfo wallet) async {
    final wallets = state.wallets;
    if (wallets.contains(wallet)) {
      throw Exception('Wallet already exists');
    }

    await _updateWallets(wallets + [wallet]);
  }

  static WalletInfo generateWalletInfo(WalletData walletData) {
    final wid = RandomUtil.generateKey();
    final publicKey = ViteUtil.seedToPublicKey(walletData.seed, 0).hex;
    final accountsBoxKey =
        digest(data: stringToBytesUtf8('accountsBoxKey#$wid')).hex;
    final accountInfoBoxKey =
        digest(data: stringToBytesUtf8('accountInfoBoxKey#$wid')).hex;
    final selectionKey =
        digest(data: stringToBytesUtf8('selectionKey#$wid')).hex;

    return WalletInfo(
      name: walletData.name,
      wid: wid,
      accountsBoxKey: accountsBoxKey,
      accountsEncryptionKey: Database.generateSecureKey(),
      accountInfoBoxKey: accountInfoBoxKey,
      accountInfoEncryptionKey: Database.generateSecureKey(),
      selectionKey: selectionKey,
      publicKey: publicKey,
    );
  }

  Future<WalletInfo> setupWallet(WalletData walletData) async {
    final wallet = generateWalletInfo(walletData);

    // set seed and mnemonic to vault
    final walletVault = WalletVault(wallet.wid, repository.vault);
    await walletVault.setSeed(
      walletData.seed,
      mnemonic: walletData.mnemonic,
      password: walletData.password,
    );

    await addWallet(wallet);
    return wallet;
  }

  Future<void> removeWallet(WalletInfo wallet) async {
    if (wallet == state.selected) {
      throw Exception('Can not remove active wallet');
    }

    // remove seed and mnemonic from vault
    final walletVault = WalletVault(wallet.wid, repository.vault);
    await walletVault.delete();

    // remove wallet boxes
    await Database.removeBox(wallet.accountsBoxKey);
    await Database.removeBox(wallet.accountInfoBoxKey);

    // remove account selection
    await repository.settings.remove(wallet.selectionKey);

    // remove wallet from bundle
    final wallets = state.wallets.remove(wallet);
    await repository.updateWallets(wallets);
    state = state.copyWith(wallets: wallets);
  }
}
