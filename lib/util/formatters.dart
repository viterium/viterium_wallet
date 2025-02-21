import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'numberutil.dart';

class PercentFormatter extends TextInputFormatter {
  final String groupSeparator;
  final String decimalSeparator;

  final symbols = <String>{};

  PercentFormatter({
    required this.groupSeparator,
    required this.decimalSeparator,
  }) {
    symbols.addAll([groupSeparator, decimalSeparator]);
    symbols.addAll('0123456789'.split(''));
  }

  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final inputSymbols = newValue.text.trim().split('');
    if (!symbols.containsAll(inputSymbols)) {
      return oldValue;
    }

    if (!inputSymbols.contains(decimalSeparator) &&
        (inputSymbols.length > 3 ||
            (inputSymbols.length == 3 &&
                (inputSymbols[0] != '1' ||
                    inputSymbols[1] != '0' ||
                    inputSymbols[2] != '0')))) {
      return oldValue;
    }

    String workingText = newValue.text.replaceAll(
      groupSeparator,
      decimalSeparator,
    );

    if (decimalSeparator.allMatches(workingText).length > 1) {
      return oldValue;
    }

    while (workingText.length > 1 && workingText[0] == '0') {
      workingText = workingText.substring(1);
    }
    if (workingText.startsWith(decimalSeparator)) {
      workingText = '0$workingText';
    }
    final text = workingText;
    final splitStrs = workingText.split(decimalSeparator);
    if (splitStrs.length > 1 &&
        (splitStrs[1].length > 2 || splitStrs[0].length == 3)) {
      return oldValue;
    }

    workingText = workingText.replaceAll(decimalSeparator, '');

    if (workingText.length > 5 ||
        (workingText.length == 5 && workingText[0] != '1')) {
      return oldValue;
    }

    return newValue.copyWith(
      text: text.replaceAll(groupSeparator, decimalSeparator),
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

/// Input formatter for Crpto/Fiat amounts
class CurrencyFormatter extends TextInputFormatter {
  final String groupSeparator;
  final String decimalSeparator;
  final int maxDecimalDigits;

  final numberFormat = NumberFormat.decimalPattern();
  final symbols = <String>{};

  CurrencyFormatter({
    required this.groupSeparator,
    required this.decimalSeparator,
    this.maxDecimalDigits = NumberUtil.maxDecimalDigits,
  }) {
    symbols.addAll([groupSeparator, decimalSeparator]);
    symbols.addAll('0123456789'.split(''));
  }

  String _formatNumber(String numberStr) {
    final number = Decimal.tryParse(numberStr);
    if (number != null) {
      final formatter = DecimalFormatter(numberFormat);
      return formatter.format(number);
    }
    return numberStr;
  }

  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String workingText = newValue.text;
    // Only allow digits and separators
    final inputSymbols = workingText.split('');
    if (!symbols.containsAll(inputSymbols)) {
      if (decimalSeparator == ',' && workingText.endsWith('.')) {
        workingText = workingText.replaceRange(
          workingText.length - 1,
          null,
          ',',
        );
      } else if (decimalSeparator == '.' && workingText.endsWith(',')) {
        workingText = workingText.replaceRange(
          workingText.length - 1,
          null,
          '.',
        );
      } else {
        return oldValue;
      }
    }

    // Workaround for iOS Number Keyboard missmatch
    if (workingText.endsWith(groupSeparator)) {
      workingText =
          workingText.substring(0, workingText.length - groupSeparator.length) +
          decimalSeparator;
    }
    workingText = workingText.replaceAll(groupSeparator, '');
    if (workingText.isEmpty) {
      return newValue;
    }
    // If contains more than 2 decimal separators in newValue, return oldValue
    if (decimalSeparator.allMatches(workingText).length > 1) {
      return oldValue;
    } else if (workingText.startsWith(decimalSeparator)) {
      workingText = '0' + workingText;
    }

    List<String> splitStr = workingText.split(decimalSeparator);

    if (splitStr.length == 1) {
      final newText = _formatNumber(splitStr[0]);
      return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }

    final newText =
        _formatNumber(splitStr[0]) +
        decimalSeparator +
        splitStr[1].substring(0, min(splitStr[1].length, maxDecimalDigits));

    if (newValue.text == newText) {
      return newValue;
    }
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

/// Input formatter that ensures text starts with @
class ContactInputFormatter extends TextInputFormatter {
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String workingText = newValue.text;
    if (!workingText.startsWith('@')) {
      workingText = '@' + workingText;
    }

    List<String> splitStr = workingText.split('@');
    // If this string contains more than 1 @, remove all but the first one
    if (splitStr.length > 2) {
      workingText = '@' + workingText.replaceAll(r'@', '');
    }

    // If nothing changed, return original
    if (workingText == newValue.text) {
      return newValue;
    }

    return newValue.copyWith(
      text: workingText,
      selection: TextSelection.collapsed(offset: workingText.length),
    );
  }
}

/// Input formatter that ensures only one space between words
class SingleSpaceInputFormatter extends TextInputFormatter {
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    // Don't allow first character to be a space
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    } else if (oldValue.text.length == 0 && newValue.text == ' ') {
      return oldValue;
    } else if (oldValue.text.endsWith(' ') && newValue.text.endsWith('  ')) {
      return oldValue;
    }

    return newValue;
  }
}

/// Ensures input is always uppercase
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

/// Ensures input is always lowercase
class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}
