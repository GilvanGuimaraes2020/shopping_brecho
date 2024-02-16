import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

extension ExtensionString on String {
  static const accents =
      'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
  static const noAccents =
      'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

  String capitalize() {
    return isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
  }

  String formatPhoneToSave() {
    if (ValidatorHelper.phoneNumberIsValid(this)) {
      return '+55${removeTelephoneUnnecessaryParts()}';
    }
    return this;
  }

  String get removeAccents => splitMapJoin('',
      onNonMatch: (char) => char.isNotEmpty && accents.contains(char)
          ? noAccents[accents.indexOf(char)]
          : char);

  String removeTelephoneUnnecessaryParts() {
    String formatedPhone = '';

    if (isNullOrEmpty) {
      return formatedPhone;
    }

    try {
      String phone = this;
      if (!startsWith("+")) {
        phone = "+${this}";
      }
      formatedPhone = phone.replaceAll(RegExp(r'\+55|\+|\s|-|\(|\)'), '');
    } catch (_) {}
    return formatedPhone;
  }

  String toFormattedPhoneNumber({bool removeDDI = true}) {
    String formatted = this;
    if (removeDDI) {
      formatted = removeTelephoneUnnecessaryParts();
    }

    if (formatted.length != 10 && formatted.length != 11) return this;

    return '(${formatted.substring(0, 2)}) ${formatted.substring(2, 7)}-${formatted.substring(7)}';
  }
}

extension ExtensionMaybeNullString on String? {
  bool get isNotNullAndNotEmpty => this?.isNotEmpty ?? false;
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}

extension ExtensionMaybeNullList on List? {
  bool get isNotNullAndNotEmpty => this?.isNotEmpty ?? false;
}
