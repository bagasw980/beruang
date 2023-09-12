import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class RupiahFormat extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      symbol: '',
      locale: 'id',
      decimalDigits: 2,
    );
    String value;
    newValue.text.length > 3
        ? value = newValue.text.substring(0, newValue.text.length - 4) +
            newValue.text.substring(newValue.text.length - 1)
        : value = newValue.text;
    value = value
        .replaceAll(RegExp(r'[,.-]'), '')
        .replaceAll(RegExp(r'[a-zA-Z]'), '');
    String newText;
    value.isEmpty
        ? newText = value
        : newText = currencyFormatter.format(double.parse(value));
    return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length));
  }
}
