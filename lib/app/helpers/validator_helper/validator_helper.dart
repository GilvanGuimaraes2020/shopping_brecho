//ignore_for_file:avoid_classes_with_only_static_members
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

class ValidatorHelper {
  static const requiredText = 'Campo obrigatorio';
  static const dateText = 'Data invalida';
  static const moneyText = 'Valor invalido';
  static const endDateText = 'Mês entre 1 a 12 e ano menor ou igual ao atual';
  static const startDateText = 'Mês entre 1 a 12 e ano menor ou igual ao atual';

  static bool moneyIsValid(String? value) {
    final regex = RegExp('[0-9]*\\.[0-9]{2}');
    return regex.hasMatch(value ?? '');
  }

  static bool dateMonthYearIsValid(String? value) {
    if (value.isNullOrEmpty) {
      return false;
    }

    if (value!.length < 4) {
      return false;
    }
    final parts = value.split('/');

    final monthValue = int.tryParse(parts[0]);
    final yearValue = int.tryParse(parts[1]);

    final monthIsValid =
        List.generate(12, (index) => index + 1).contains(monthValue);

    final yearIsValid = (yearValue ?? 9999) <= DateTime.now().year;

    return monthIsValid && yearIsValid;
  }

  static bool dateIsValid(String? value) {
    final regex = RegExp('[\\d]{2}/[\\d]{2}/[\\d]{4}');
    return regex.hasMatch(value ?? '');
  }

  static bool textIsValid(String? value) {
    return value?.isNotEmpty ?? false;
  }
}
