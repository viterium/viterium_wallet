import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/core/vite_uri.dart';

void main() {
  final address = 'vite_fa1d81d93bcc36f234f7bccf1403924a0834609f4b2e9856ad';
  final tti = 'tti_5649544520544f4b454e6e40';
  final data = base64ToBytes(base64.normalize('MTIzYWJjZA'));

  test('ViteUri address only', () {
    final uriStr = 'vite:$address';
    final viteUri = ViteUri.tryParse(uriStr);
    expect(viteUri, isNotNull);
    expect(viteUri?.viteAddress, equals(address));
    expect(viteUri?.amount, equals(Decimal.zero));
    expect(viteUri?.token, equals(Token.vite));
    expect(viteUri?.fee, isNull);
    expect(viteUri?.data, isNull);
    expect(viteUri?.chainId, isNull);
    expect(viteUri?.function, isNull);
  });

  test('ViteUri with address, tti, amount, data', () {
    final uriStr = 'vite:$address?tti=$tti&amount=1&data=MTIzYWJjZA';
    final viteUri = ViteUri.tryParse(uriStr);
    expect(viteUri, isNotNull);
    expect(viteUri?.viteAddress, equals(address));
    expect(viteUri?.amount, equals(Decimal.one));
    expect(viteUri?.token, equals(Token.parse(tti)));
    expect(viteUri?.fee, isNull);
    expect(viteUri?.data, equals(data));
    expect(viteUri?.chainId, isNull);
    expect(viteUri?.function, isNull);
  });

  test('ViteUri with address, function, amount, data', () {
    final uriStr = 'vite:$address/echo?amount=1&data=MTIzYWJjZA';
    final viteUri = ViteUri.tryParse(uriStr);
    expect(viteUri, isNotNull);
    expect(viteUri?.viteAddress, equals(address));
    expect(viteUri?.amount, equals(Decimal.one));
    expect(viteUri?.token, equals(Token.vite));
    expect(viteUri?.fee, isNull);
    expect(viteUri?.data, equals(data));
    expect(viteUri?.chainId, isNull);
    expect(viteUri?.function, equals('echo'));
  });
}
