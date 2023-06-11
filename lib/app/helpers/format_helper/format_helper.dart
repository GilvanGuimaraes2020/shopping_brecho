import 'package:intl/intl.dart';

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
}
