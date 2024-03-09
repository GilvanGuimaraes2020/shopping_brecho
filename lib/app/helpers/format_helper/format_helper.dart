import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

// ignore: avoid_classes_with_only_static_members
class FormatHelper {
  static String brazilianDate(DateTime? value) {
    if (value == null) {
      return '';
    }
    final DateFormat format = DateFormat('dd/MM/yyyy');
    return format.format(value);
  }

  static DateTime? parseToDDMMYYYY(dynamic value) {
    const format = 'dd/MM/yyyy';
    try {
      return DateFormat(format).parse(value as String);
    } catch (e) {
      return null;
    }
  }

  static String formatDDMMYYYY(dynamic value) {
    if (value == null || value == '') return '';
    DateTime? newValue;
    if (value is DateTime) {
      newValue = value;
    } else {
      newValue = DateTime.tryParse(value.toString());
    }
    return newValue == null
        ? ''
        : '${newValue.day}/${newValue.month}/${newValue.year}';
  }

  static String formatUTCDateToBRDescription(String stringDate) {
    final date = DateTime.parse(stringDate).toLocal();
    final now = DateTime.now();

    final format = date.year != now.year ? "dd/MM/yyyy" : "dd 'de' MMMM";

    initializeDateFormatting('pt_BR');
    return DateFormat(format, 'pt_BR').format(date);
  }

  static String parseStringDateToCollectionRef(String value) {
    final List<String> partDate = value.split('/');
    return '${partDate[1]}_${partDate[0]}';
  }

  static String formatPhone(String? value) {
    if (value.isNullOrEmpty) return '';

    var text = value!.removeTelephoneUnnecessaryParts();

    try {
      if (text.length > 12) {
        text = text.substring(3);
      }

      final regex = text.length < 11
          ? RegExp(r'(\d{2})(\d{4})(\d{4})')
          : RegExp(r'(\d{2})(\d{5})(\d{4})');

      final matches = regex.allMatches(text);

      return '(${matches.first.group(1)}) ${matches.first.group(2)}-${matches.first.group(3)}';
    } catch (e) {
      return text;
    }
  }

  static String formatDateToApi(String date) {
    final day = date.split('/')[0];
    final month = date.split('/')[1];
    final year = date.split('/')[2];

    return '$year-$month-${day}T00:00:00.785Z';
  }

  static String currency(
    dynamic value, {
    String locale = 'pt_BR',
    String symbol = 'R\$',
  }) {
    try {
      if (value is String) {
        // ignore: parameter_assignments
        value = double.tryParse(value);
      }
      final valueFormatted = NumberFormat("#,##0.00", locale).format(value);
      return symbol.trim().isEmpty
          ? valueFormatted
          : '${symbol.trim()} $valueFormatted';
    } catch (_) {
      return '';
    }
  }
}
