class LabelValueHelperModel {
  String label = '';
  dynamic value;

  LabelValueHelperModel({required this.label, required this.value});

  LabelValueHelperModel.fromJson(Map<String, dynamic> json) {
    label = json['label'].toString();
    value = json['value'] ?? '';
  }
}
