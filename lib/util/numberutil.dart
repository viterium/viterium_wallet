import 'dart:math';

import 'package:decimal/decimal.dart';

class NumberUtil {
  static const int maxDecimalDigits = 6; // Max digits after decimal

  static BigInt getRawFromDecimal(Decimal value, int decimals) {
    final rawDecimal = value * Decimal.ten.pow(decimals);
    final raw = rawDecimal.toBigInt();
    return raw;
  }

  static Decimal getRawAsUsableDecimal(BigInt raw, int decimals) {
    final result = (raw.toDecimal() / Decimal.ten.pow(decimals))
        .toDecimal(scaleOnInfinitePrecision: decimals);
    return result;
  }

  /// Return raw as a normal amount.
  ///
  /// @param raw 100000000000000000000000000000
  /// @returns 1
  ///
  static String getRawAsUsableString(
    BigInt raw,
    int decimals, [
    int maxDigits = 6,
  ]) {
    // NumberFormat nf = NumberFormat.currency(
    //     locale: 'en_US', decimalDigits: decimals, symbol: '');
    final decimal = (raw.toDecimal() / Decimal.ten.pow(decimals))
        .toDecimal(scaleOnInfinitePrecision: decimals);
    String asString = decimal.toStringAsFixed(decimals);
    var split = asString.split(".");
    if (split.length > 1) {
      // Remove trailing 0s from this
      if (int.parse(split[1]) == 0) {
        asString = split[0];
      } else {
        String newStr = split[0] + ".";
        String digits = split[1];
        int endIndex = digits.length;
        for (int i = 1; i <= digits.length; i++) {
          if (int.parse(digits[digits.length - i]) == 0) {
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
    final asDecimalRaw = Decimal.tryParse(amount);
    if (asDecimalRaw == null) {
      return null;
    }

    final asDecimal = asDecimalRaw * Decimal.ten.pow(decimals);
    return asDecimal.toBigInt();
  }

  static BigInt parseAmountAsRaw(String amount, int decimals) {
    Decimal decimalRaw = Decimal.parse(amount) * Decimal.ten.pow(decimals);
    return decimalRaw.toBigInt();
  }

  static String approxAmount(
    BigInt amountRaw,
    int decimals, [
    int precision = 6,
  ]) {
    // Indicate that this is a special amount if some digits are not displayed
    if (NumberUtil.getRawAsUsableString(amountRaw, decimals) ==
        NumberUtil.getRawAsUsableDecimal(amountRaw, decimals).toString()) {
      final amount = NumberUtil.getRawAsUsableString(amountRaw, decimals);
      return amount;
    } else {
      final amount = NumberUtil.getRawAsUsableDecimal(amountRaw, decimals)
              .toStringAsFixed(precision) +
          "~";
      return amount;
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
