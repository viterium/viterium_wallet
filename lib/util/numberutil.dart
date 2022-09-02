import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:intl/intl.dart';
import 'package:vite/vite.dart';

extension BalanceInfoExt on BalanceInfo {
  Amount get amount => Amount.raw(balance, tokenInfo: tokenInfo);
}

class NumberUtil {
  static const int maxDecimalDigits = 6; // Max digits after decimal
  static final min6DigitsValue = Decimal.parse('0.000001');
  static final min4DigitsValue = Decimal.parse('0.0001');

  static String textFieldFormatedAmount(Amount amount) {
    return formatedAmount(amount, showApprox: false, showLessThan: false);
  }

  static String formatedAmount(
    Amount amount, {
    bool showApprox: false,
    bool showLessThan: true,
  }) {
    var value = amount.value;
    if (value == Decimal.zero) {
      return '0';
    }
    if (showLessThan && value < min6DigitsValue) {
      return '<0.000001';
    }
    final valueScale = value.scale;
    final scale = min(
        valueScale,
        value < min6DigitsValue
            ? amount.tokenInfo.decimals
            : value < min4DigitsValue
                ? 6
                : 4);
    value = value.truncate(scale: scale);

    final formatter = NumberFormat.currency(
      name: '',
      symbol: '',
      decimalDigits: scale,
    );
    final formated = formatter.format(DecimalIntl(value));
    if (showApprox && amount.value != value) {
      return '~$formated';
    }
    return formated;
  }

  static String formatedBalance(BalanceInfo balance) {
    return formatedAmount(balance.amount);
  }

  static BigInt getRawFromDecimal(Decimal value, int decimals) {
    final rawDecimal = value * Decimal.ten.pow(decimals);
    final raw = rawDecimal.toBigInt();
    return raw;
  }

  static Decimal getDecimalFromRaw(BigInt raw, int decimals) {
    final result = (raw.toDecimal() / Decimal.ten.pow(decimals))
        .toDecimal(scaleOnInfinitePrecision: decimals);
    return result;
  }

  /// Return raw as a normal amount.
  ///
  /// @param raw 100000000000000000000000000000
  /// @returns 1
  ///
  static String getStringFromRaw(
    BigInt raw,
    int decimals, [
    int maxDigits = 6,
  ]) {
    final decimal = getDecimalFromRaw(raw, decimals);
    String asString = decimal.toStringAsFixed(decimals);
    var split = asString.split(".");
    if (split.length > 1) {
      // Remove trailing 0s from this
      if (int.tryParse(split[1]) == 0) {
        asString = split[0];
      } else {
        String newStr = split[0] + ".";
        String digits = split[1];
        int endIndex = digits.length;
        for (int i = 1; i <= digits.length; i++) {
          if (int.tryParse(digits[digits.length - i]) == 0) {
            endIndex--;
          } else {
            break;
          }
        }
        endIndex = min(endIndex, maxDigits);
        digits = digits.substring(0, endIndex);
        newStr = split[0] + "." + digits;
        asString = newStr;
      }
    }
    return asString;
  }

  static BigInt? tryParseAmountAsRaw(String amount, int decimals) {
    final decimal = Decimal.tryParse(amount);
    if (decimal == null) {
      return null;
    }

    final decimalRaw = decimal * Decimal.ten.pow(decimals);
    return decimalRaw.toBigInt();
  }

  static BigInt parseAmountAsRaw(String amount, int decimals) {
    Decimal decimalRaw = Decimal.parse(amount) * Decimal.ten.pow(decimals);
    return decimalRaw.toBigInt();
  }

  static String approx({required Amount amount, int precision = 6}) {
    return approxAmountRaw(amount.raw, amount.decimals, precision);
  }

  static String approxAmountRaw(
    BigInt amountRaw,
    int decimals, [
    int precision = 6,
  ]) {
    // Indicate that this is a special amount if some digits are not displayed
    if (getStringFromRaw(amountRaw, decimals, precision) ==
        getDecimalFromRaw(amountRaw, decimals).toString()) {
      final amount = getStringFromRaw(amountRaw, decimals, precision);
      return amount;
    } else {
      final amount =
          getDecimalFromRaw(amountRaw, decimals).toStringAsFixed(precision);
      return '~' + amount;
    }
  }

  /// Sanitize a number as something that can actually
  /// be parsed. Expects "." to be decimal separator
  /// @param amount $1,512
  /// @returns 1.512
  static String sanitizeNumber(String input,
      {int maxDecimalDigits = maxDecimalDigits}) {
    String sanitized = "";
    List<String> splitStr = input.split(".");
    if (splitStr.length > 1) {
      if (splitStr[1].length > maxDecimalDigits) {
        splitStr[1] = splitStr[1].substring(0, maxDecimalDigits);
        input = splitStr[0] + "." + splitStr[1];
      }
    }
    for (int i = 0; i < input.length; i++) {
      try {
        if (input[i] == ".") {
          sanitized = sanitized + input[i];
        } else {
          int.parse(input[i]);
          sanitized = sanitized + input[i];
        }
      } catch (e) {}
    }
    return sanitized;
  }
}
