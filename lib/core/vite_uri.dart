import 'dart:convert';
import 'dart:core';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:vite/core.dart';
import 'package:vite/vite.dart' as vite;

final viteAddressRegex = RegExp(r'vite_[0-9a-h]{50}');

String getShortString(vite.ViteAddress address) {
  assert(vite.Address.isValid(address));
  return address.substring(0, 11) +
      "..." +
      address.substring(address.length - 6);
}

String getShorterString(vite.ViteAddress address) {
  assert(vite.Address.isValid(address));
  return address.substring(0, 9) +
      "..." +
      address.substring(address.length - 4);
}

class ViteUri {
  final Address address;
  final Token? token;
  final Decimal? amount;
  final Decimal? fee;
  final Uint8List? data;
  final String? function;
  final String? chainId;
  final bool isValidUri;

  const ViteUri({
    required this.address,
    this.token,
    this.amount,
    this.fee,
    this.data,
    this.function,
    this.chainId,
    required this.isValidUri,
  });

  ViteAddress get viteAddress => address.viteAddress;

  String get hexData => data?.hex ?? '';

  static ViteAddress? findAddressInString(String value) {
    final match = viteAddressRegex.firstMatch(value);
    if (match != null) {
      return match.group(0);
    }
    return null;
  }

  static ViteUri parse(String value) {
    final viteUri = ViteUri.tryParse(value);
    if (viteUri == null) {
      throw FormatException();
    }
    return viteUri;
  }

  static ViteUri? tryParse(String value) {
    Address? address;
    Decimal? amount;
    Token? token;
    Decimal? fee;
    Uint8List? data;
    String? function;
    String? chainId;
    bool isValidUri = true;

    final uri = Uri.tryParse(value);
    if (uri != null && uri.scheme == 'vite' && uri.path.isNotEmpty) {
      final pathComp = uri.path.split('/');
      final addressChain = pathComp.first;
      String viteAddress;
      if (addressChain.contains('@')) {
        final split = addressChain.split('@');
        viteAddress = split.first;
        chainId = split.last;
      } else {
        viteAddress = addressChain;
      }
      address = Address.tryParse(viteAddress);
      if (address != null) {
        if (pathComp.length >= 2) {
          function = pathComp[1];
        }
        token = Token.tryParse(uri.queryParameters['tti'] ?? '');
        fee = Decimal.tryParse(uri.queryParameters['fee'] ?? '');
        amount = Decimal.tryParse(uri.queryParameters['amount'] ?? '');
        final tryData = uri.queryParameters['data'];
        if (tryData != null) {
          try {
            data = vite.base64ToBytes(base64.normalize(tryData));
          } catch (_) {}
        }
      }
    } else {
      isValidUri = false;
      final viteAddress = findAddressInString(value);
      if (viteAddress == null) {
        return null;
      }
      address = Address.tryParse(viteAddress);

      final split = value.split(':');
      if (split.length > 1) {
        Uri? uri = Uri.tryParse(value);
        if (uri != null && uri.queryParameters['amount'] != null) {
          amount = Decimal.tryParse(uri.queryParameters['amount']!);
        }
      }
    }
    if (address == null) {
      return null;
    }
    return ViteUri(
      address: address,
      token: token,
      amount: amount,
      fee: fee,
      data: data,
      function: function,
      chainId: chainId,
      isValidUri: isValidUri,
    );
  }
}
