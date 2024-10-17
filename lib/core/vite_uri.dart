import 'dart:convert';
import 'dart:core';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:vite/vite.dart';

class ViteUri {
  final Address address;
  final Token? token;
  final Decimal? amount;
  final Decimal? fee;
  final Uint8List? data;
  final String? function;
  final String? chainId;

  const ViteUri({
    required this.address,
    this.token,
    this.amount,
    this.fee,
    this.data,
    this.function,
    this.chainId,
  });

  ViteAddress get viteAddress => address.viteAddress;

  String get hexData => data?.hex ?? '';

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

    final uri = Uri.tryParse(value);
    if (uri != null && uri.scheme == 'vite' && uri.path.isNotEmpty) {
      final pathComp = uri.path.split('/');
      final addressChain = pathComp.first;
      String viteAddress;
      if (addressChain.contains('@')) {
        final split = addressChain.split('@');
        viteAddress = split.first;
        if (split.length > 1) {
          chainId = split.last;
        }
      } else {
        viteAddress = addressChain;
      }
      address = Address.tryParse(viteAddress);
      if (address != null) {
        if (pathComp.length >= 2) {
          function = pathComp[1];
        }
        token = Token.tryParse(uri.queryParameters['tti'] ?? '');
        amount = Decimal.tryParse(uri.queryParameters['amount'] ?? '');
        if (amount != null && token == null) {
          token = Token.vite;
        }
        fee = Decimal.tryParse(uri.queryParameters['fee'] ?? '');
        final tryData = uri.queryParameters['data'];
        if (tryData != null) {
          try {
            data = base64ToBytes(base64.normalize(tryData));
          } catch (_) {}
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
    );
  }
}
