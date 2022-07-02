import 'package:vite/utils.dart';

import '../core/vault.dart';
import '../util/vite_util.dart';

const _kEntropyKey = 'viterium_entropy_key';
const _kMnemonicKey = 'viterium_mnemonic_key';
const _kSeedKey = 'viterium_seed_key';

class WalletVault {
  final Vault vault;
  final String _entropyKey;
  final String _mnemonicKey;
  final String _seedKey;

  const WalletVault(String wid, this.vault)
      : _entropyKey = '$_kEntropyKey#$wid',
        _mnemonicKey = '$_kMnemonicKey#$wid',
        _seedKey = '$_kSeedKey#$wid';

  Future<String> _getEntropy({String? password}) async {
    final entropy = await vault.get(_entropyKey);

    if (entropy == null) {
      throw Exception('Entropy is missing from vault');
    }

    if (!ViteUtil.isEncryptedHex(entropy)) {
      return entropy;
    }

    if (password == null) {
      throw Exception('Entropy is password protected');
    }

    final decrypted = ViteUtil.decryptHex(entropy, password);
    return decrypted;
  }

  Future<String> getMnemonic({String? password}) async {
    final mnemonic = await vault.get(_mnemonicKey);

    if (mnemonic == null) {
      // try legacy entropy
      final entropy = await _getEntropy(password: password);
      return entropyHexToMnemonic(entropy);
    }

    if (!ViteUtil.isEncryptedHex(mnemonic)) {
      return mnemonic;
    }

    if (password == null) {
      throw Exception('Mnemonic is password protected');
    }

    final decrypted = ViteUtil.decryptToText(mnemonic, password);
    return decrypted;
  }

  Future<String> getSeed({String? password}) async {
    final seed = await vault.get(_seedKey);

    if (seed == null) {
      throw Exception('Seed is missing from vault');
    }

    if (!ViteUtil.isEncryptedHex(seed)) {
      return seed;
    }

    if (password == null) {
      throw Exception('Seed is password protected');
    }

    final decrypted = ViteUtil.decryptHex(seed, password);

    if (!ViteUtil.isValidSeed(decrypted)) {
      throw Exception('Incorrect password');
    }
    return decrypted;
  }

  Future<bool> hasMnemonic() async {
    final mnemonic = await vault.get(_mnemonicKey);
    final mnemonicOrSeed = mnemonic ?? await vault.get(_seedKey);
    return mnemonicOrSeed != null;
  }

  Future<bool> seedIsEncrypted() async {
    final seed = await vault.get(_seedKey);
    if (seed == null) {
      return false;
    }

    return ViteUtil.isEncryptedHex(seed);
  }

  Future<void> setSeed(
    String seed, {
    required String? mnemonic,
    String? password,
  }) async {
    if (password != null) {
      // encrypt mnemonic with password for vault
      mnemonic = ViteUtil.tryEncryptText(mnemonic, password);
      // encrypt seed with password for vault
      seed = ViteUtil.encryptHex(seed, password);
    }
    await vault.set(_seedKey, seed);
    await vault.set(_mnemonicKey, mnemonic);
  }

  Future<void> delete() async {
    await vault.delete(_entropyKey);
    await vault.delete(_mnemonicKey);
    await vault.delete(_seedKey);
  }

  Future<String> getSessionKey() => vault.getSessionKey();
  Future<String> updateSessionKey() => vault.updateSessionKey();
}
