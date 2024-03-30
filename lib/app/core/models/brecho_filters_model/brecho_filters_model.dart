import 'package:freezed_annotation/freezed_annotation.dart';

part 'brecho_filters_model.freezed.dart';
part 'brecho_filters_model.g.dart';

@freezed
class BrechoFiltersModel with _$BrechoFiltersModel {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    includeIfNull: false,
    explicitToJson: true,
  )
  factory BrechoFiltersModel({
    bool? isSold,
    dynamic startDate,
    dynamic finishedDate,
  }) = _BrechoFiltersModel;

  factory BrechoFiltersModel.fromJson(Map<String, dynamic> json) =>
      _$BrechoFiltersModelFromJson(json);
}
