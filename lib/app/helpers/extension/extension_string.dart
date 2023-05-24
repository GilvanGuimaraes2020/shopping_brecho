extension ExtensionString on String {
  String capitalize() {
    return isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
  }
}

extension ExtensionMaybeNullString on String? {
  bool get isNotNullAndNotEmpty => this?.isNotEmpty ?? false;
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}

extension ExtensionMaybeNullList on List? {
  bool get isNotNullAndNotEmpty => this?.isNotEmpty ?? false;
}
