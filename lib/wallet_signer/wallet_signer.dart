import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/accounts_notifier.dart';
import '../app_providers.dart';
import '../wallet_auth/wallet_auth_notifier.dart';

final walletSignerProvider = Provider.autoDispose((ref) {
  final accounts = ref.watch(accountsProvider);
  final walletAuth = ref.watch(walletAuthProvider.notifier);

  return WalletSigner(accounts, walletAuth);
});

class WalletSigner implements SignerBase {
  final AccountsNotifier _accounts;
  final WalletAuthNotifier _walletAuth;

  const WalletSigner(this._accounts, this._walletAuth);

  @override
  Future<bool> canSignForAddress(Address address) async {
    return _accounts.containsAddress(address.viteAddress);
  }

  @override
  Future<Uint8List> publicKeyOfAddress(Address address) async {
    final index = _accounts.indexOfAddress(address.viteAddress);
    if (index == null) {
      throw Exception('Address not found');
    }
    final pubKey = _walletAuth.pubKeyAtIndex(index);
    return pubKey;
  }

  @override
  Future<Uint8List> sign(Uint8List data, Address address) async {
    final index = _accounts.indexOfAddress(address.viteAddress);
    if (index == null) {
      throw Exception('Address not found');
    }
    final signature = _walletAuth.sign(data, index);
    return signature;
  }
}
