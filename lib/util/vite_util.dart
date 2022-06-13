import 'dart:math';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'package:vite/utils.dart';
import 'package:vite/vite.dart' as vite;

import '../encrypt/crypter.dart';
import '../quota/quota_stake_amounts.dart';

class ViteUtil {
  const ViteUtil();

  static const viteTokenId = vite.viteTokenId;
  static const viteZeroAddress =
      'vite_0000000000000000000000000000000000000000a4f3a0cb58';

  static String generateMnemonic({int strength = 128}) {
    return vite.generateMnemonic(strength: strength);
  }

  static const seedLength = 128;

  static bool isValidSeed(String seed) {
    return isHex(seed) && seed.length == seedLength;
  }

  static bool isEncryptedHex(String hex) {
    try {
      final salted = bytesUtf8ToString(hexToBytes(hex.substring(0, 16)));
      return salted == "Salted__";
    } catch (e) {
      return false;
    }
  }

  static bool isValidAddress(String address) {
    return vite.Address.isValid(address);
  }

  static String? mnemonicFromViteAppLink(String link) {
    if (!link.startsWith('viteapp://backup-wallet?')) {
      return null;
    }
    try {
      final uri = Uri.parse(link);
      final entropy = uri.queryParameters['entropy'];
      if (entropy == null) {
        return null;
      }
      final mnemonic = mnemonicWordsFromEntropyHex(entropy).join(' ');
      return mnemonic;
    } catch (e) {
      return null;
    }
  }

  static bool isValidMnemonicWord(String word) {
    return vite.isValidMnemonicWord(word);
  }

  static bool isValidMnemonic(String mnemonic) {
    return vite.isValidMnemonic(mnemonic, verifyChecksum: false);
  }

  static List<String> mnemonicWordsFromEntropyHex(String entropyHex) {
    return vite.entropyHexToMnemonic(entropyHex).split(' ');
  }

  static String seedFromMnemonic(String mnemonic) {
    return vite.mnemonicToSeed(mnemonic).hex;
  }

  static Uint8List decrypt(Uint8List data, String password) {
    return NanoCrypt.decrypt(data, password);
  }

  static String decryptHex(String value, String password) {
    return bytesToHex(decrypt(hexToBytes(value), password));
  }

  static String? tryDecryptHex(String? value, String password) {
    if (value == null) return null;
    return decryptHex(value, password);
  }

  static Uint8List encrypt(Uint8List data, String password) {
    return NanoCrypt.encrypt(data, password);
  }

  static String encryptHex(String value, String password) {
    return bytesToHex(encrypt(hexToBytes(value), password));
  }

  static String? tryEncryptHex(String? value, String password) {
    if (value == null) return null;
    return encryptHex(value, password);
  }

  static String encryptText(String value, String password) {
    return bytesToHex(encrypt(stringToBytesUtf8(value), password));
  }

  static String decryptToText(String value, String password) {
    return bytesUtf8ToString(decrypt(hexToBytes(value), password));
  }

  static Uint8List signData(Uint8List data, Uint8List privKey) {
    return vite.sign(message: data, privateKey: privKey);
  }

  static vite.KeyPair seedToKeyPair(String seed, int index) {
    assert(index >= 0);
    final keyPair = vite.Wallet.deriveKeyPairFromSeed(hexToBytes(seed), index);
    return keyPair;
  }

  static Uint8List seedToPublicKey(String seed, int index) {
    final keyPair = seedToKeyPair(seed, index);
    return keyPair.publicKey;
  }

  static Uint8List seedToPrivateKey(String seed, int index) {
    final keyPair = seedToKeyPair(seed, index);
    return keyPair.privateKey;
  }

  static vite.Address seedToAddress(String seed, int index) {
    final keyPair = vite.Wallet.deriveKeyPairFromSeed(hexToBytes(seed), index);
    return vite.Address.fromPublicKey(keyPair.publicKey);
  }

  static String formatVotes(String value) {
    final decimal = Decimal.tryParse(value);
    if (decimal == null) {
      return '0';
    }
    final votes = (decimal / Decimal.ten.pow(vite.viteTokenDecimals))
        .toDecimal(scaleOnInfinitePrecision: 0);
    return votes.toStringAsFixed(0);
  }

  static int utpeForAmount(vite.Amount amount,
      {required List<String> quotaStakeList}) {
    int left = 0, right = quotaStakeList.length;
    final sValue = amount.raw + BigInt.one;
    while (left < right) {
      final mid = (left + right) ~/ 2;
      final value = BigInt.parse(quotaStakeAmounts[mid]);
      if (value < sValue) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }

    return max(1, left - 1);
  }

  static Future<Uint8List> computeSignData(
    Uint8List data,
    Uint8List privateKey,
  ) {
    return compute(_computeSignData, [data, privateKey]);
  }

  static Future<vite.Hash> computeTxHash(
      vite.RawTransaction transaction) async {
    final bytes = await compute(_computeTxHash, transaction.toJson());
    return vite.Hash(bytes);
  }
}

Uint8List _computeSignData(List<Uint8List> params) {
  return ViteUtil.signData(params.first, params.last);
}

Uint8List _computeTxHash(Map<String, dynamic> json) {
  final transaction = vite.RawTransaction.fromJson(json);
  return vite.computeTxHash(transaction).bytes;
}
