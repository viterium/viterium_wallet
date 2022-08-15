import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/util/numberutil.dart';

void main() {
  group('NumberUtil.formatAmount', () {
    test('Zero value', () {
      final amount = Amount.raw(BigInt.zero, tokenInfo: TokenInfo.vite);
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('0'));
    });

    test('Value < 0.000001', () {
      final amount = Amount.raw(BigInt.one, tokenInfo: TokenInfo.vite);
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('<0.000001'));
    });
    test('Value < 0.0001', () {
      final amount =
          Amount.value(Decimal.parse('0.00001'), tokenInfo: TokenInfo.vite);
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('0.00001'));
    });

    test('Show approx', () {
      final amount =
          Amount.value(Decimal.parse('1.0000001'), tokenInfo: TokenInfo.vite);
      final formated = NumberUtil.formatedAmount(amount, showApprox: true);
      expect(formated, equals('~1.0000'));
    });

    test('Big value', () {
      final amount = Amount.value(Decimal.parse('123456789.123456789012345678'),
          tokenInfo: TokenInfo.vite);
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('123,456,789.1234'));
    });
    test('No decimals', () {
      final amount = Amount.value(Decimal.parse('123456789'),
          tokenInfo: TokenInfo.vite.copyWith(decimals: 0));
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('123,456,789'));
    });

    test('One decimal', () {
      final amount = Amount.value(Decimal.parse('12345678.9'),
          tokenInfo: TokenInfo.vite.copyWith(decimals: 1));
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('12,345,678.9'));
    });
  });
}
