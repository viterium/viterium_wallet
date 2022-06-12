import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../util/vite_util.dart';
import '../wallet/wallet_vault.dart';
import 'wallet_auth_types.dart';

Uint8List computeSignData(List<Uint8List> params) {
  return ViteUtil.signData(params.first, params.last);
}

class WalletAuthNotifier extends StateNotifier<WalletAuth> {
  final WalletVault walletVault;

  WalletAuthNotifier(this.walletVault, WalletAuth auth) : super(auth);

  Future<void> checkEncryptedState() async {
    final isEncrypted = await walletVault.seedIsEncrypted();
    state = state.copyWith(isEncrypted: isEncrypted);
  }

  WalletAuth get walletAuth => state;
  bool get walletLocked => state.isLocked;
  bool get walletEncrypted => state.isEncrypted;

  bool _seedIsEncrypted(String seed) {
    try {
      final salted = bytesUtf8ToString(hexToBytes(seed.substring(0, 16)));
      if (salted == "Salted__") {
        return true;
      }
    } catch (e) {}
    return false;
  }

  Future<String> _getSeed() async {
    if (state.isLocked) {
      throw Exception('Wallet is locked');
    }

    if (!state.isEncrypted) {
      final seed = await walletVault.getSeed();
      if (seed == null) {
        throw Exception('Seed is missing from vault');
      }
      if (_seedIsEncrypted(seed)) {
        throw Exception('Seed is encrypted');
      }
      return seed;
    }

    final secret = state.encryptedSecret;
    if (secret == null) {
      throw Exception('Wallet is encrypted');
    }

    final sessionKey = await walletVault.getSessionKey();
    return ViteUtil.decryptHex(secret, sessionKey);
  }

  Future<Uint8List> pubKeyAtIndex(int index) async {
    assert(index >= 0);
    final seed = await _getSeed();

    return ViteUtil.seedToPublicKey(seed, index);
  }

  Future<Address> addressAtIndex(int index) async {
    assert(index >= 0);
    final seed = await _getSeed();

    return ViteUtil.seedToAddress(seed, index);
  }

  Future<Uint8List> sign(Uint8List data, int index) async {
    final seed = await _getSeed();
    final privKey = ViteUtil.seedToPrivateKey(seed, index);
    final signature = await compute(computeSignData, [data, privKey]);
    return signature;
  }

  Future<bool> hasMnemonic() => walletVault.hasEntropy();

  Future<List<String>> getMnemonic({String? password}) async {
    final entropy = await walletVault.getEntropy();
    if (entropy == null) {
      throw Exception('Mnemonic is missing from vault');
    }

    if (!state.isEncrypted) {
      return ViteUtil.mnemonicWordsFromEntropyHex(entropy);
    }

    if (password == null) {
      throw Exception('Mnemonic is encrypted');
    }
    final decrypted = ViteUtil.decryptHex(entropy, password);
    return ViteUtil.mnemonicWordsFromEntropyHex(decrypted);
  }

  void lock() {
    state = state.copyWith(
      isLocked: true,
      encryptedSecret: null,
    );
  }

  Future<bool> unlock({String? password}) async {
    if (password != null) {
      try {
        await unlockWithPassword(password);
      } catch (_) {
        return false;
      }
      return true;
    }
    state = state.copyWith(isLocked: false);
    return true;
  }

  Future<void> unlockWithPassword(String password) async {
    final encryptedSeed = await walletVault.getSeed();
    if (encryptedSeed == null) {
      throw Exception('Seed unavailable');
    }

    if (!_seedIsEncrypted(encryptedSeed)) {
      throw Exception('Seed unencrypted');
    }

    final decryptedSeed = ViteUtil.decryptHex(encryptedSeed, password);
    final sessionKey = await walletVault.getSessionKey();
    final encryptedSecret = ViteUtil.encryptHex(decryptedSeed, sessionKey);

    state = state.copyWith(
      encryptedSecret: encryptedSecret,
      isLocked: false,
      isEncrypted: true,
    );
  }

  Future<void> setPassword(String password) async {
    final seed = await walletVault.getSeed();
    if (seed == null) {
      throw Exception('Seed is missing from vault');
    }
    if (_seedIsEncrypted(seed)) {
      throw Exception('Seed is already encrypted');
    }
    if (!ViteUtil.isValidSeed(seed)) {
      throw Exception('Seed invalid');
    }

    final entropy = await walletVault.getEntropy();

    try {
      await walletVault.setSeed(
        seed,
        entropy: entropy,
        password: password,
      );

      final sessionKey = await walletVault.getSessionKey();
      final encryptedSecret = ViteUtil.encryptHex(seed, sessionKey);

      state = state.copyWith(
        encryptedSecret: encryptedSecret,
        isEncrypted: true,
      );
    } catch (e) {
      throw Exception('Failed to set password');
    }
  }

  Future<void> removePassword(String password) async {
    final encryptedSeed = await walletVault.getSeed();
    if (encryptedSeed == null) {
      throw Exception('Seed is missing from vault');
    }

    final seed = ViteUtil.decryptHex(encryptedSeed, password);
    if (!ViteUtil.isValidSeed(seed)) {
      throw Exception('Incorrect password');
    }

    final encryptedEntropy = await walletVault.getEntropy();
    final entropy = ViteUtil.tryDecryptHex(encryptedEntropy, password);
    try {
      await walletVault.setSeed(seed, entropy: entropy);
      state = state.copyWith(
        encryptedSecret: null,
        isEncrypted: false,
      );
    } catch (_) {
      walletVault.setSeed(encryptedSeed, entropy: encryptedEntropy);
    }
  }
}
