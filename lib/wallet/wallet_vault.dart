
import '../core/vault.dart';
import '../util/vite_util.dart';

const _kEntropyKey = 'viterium_entropy_key';
const _kSeedKey = 'viterium_seed_key';

class WalletVault {
  final Vault vault;
  final String _entropyKey;
  final String _seedKey;

  const WalletVault(String wid, this.vault)
      : _entropyKey = '$_kEntropyKey#$wid',
        _seedKey = '$_kSeedKey#$wid';

  Future<String?> getEntropy() => vault.get(_entropyKey);
  Future<String?> getSeed() => vault.get(_seedKey);

  Future<bool> hasEntropy() async {
    return await vault.get(_entropyKey) != null;
  }

  Future<bool> seedIsEncrypted() async {
    final seed = await getSeed();
    if (seed == null) {
      return false;
    }

    return ViteUtil.isEncryptedHex(seed);
  }

  Future<void> setSeed(
    String seed, {
    required String? entropy,
    String? password,
  }) async {
    if (password != null) {
      // encrypt entropy with password for vault
      entropy = ViteUtil.tryEncryptHex(entropy, password);
      // encrypt seed with password for vault
      seed = ViteUtil.encryptHex(seed, password);
    }
    await vault.set(_seedKey, seed);
    await vault.set(_entropyKey, entropy);
  }

  Future<void> delete() async {
    await vault.delete(_entropyKey);
    await vault.delete(_seedKey);
  }

  Future<String> getSessionKey() => vault.getSessionKey();
  Future<String> updateSessionKey() => vault.updateSessionKey();
}
