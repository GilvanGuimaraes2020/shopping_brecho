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
}
