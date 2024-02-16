import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_value_model.freezed.dart';
part 'label_value_model.g.dart';

@freezed
class LabelValueModel with _$LabelValueModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory LabelValueModel({String? label, String? value, String? description}) =
      _LabelValueModel;

  factory LabelValueModel.fromJson(Map<String, dynamic> json) =>
      _$LabelValueModelFromJson(json);
}
