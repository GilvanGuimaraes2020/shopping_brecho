import 'package:freezed_annotation/freezed_annotation.dart';

part 'results_by_category_model.freezed.dart';
part 'results_by_category_model.g.dart';

@freezed
class ResultsByCategoryModel with _$ResultsByCategoryModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory ResultsByCategoryModel({
    int? productCategoryId,
    String? categoryName,
    @Default(0) int qtyItems,
    dynamic categoryTotal,
  }) = _ResultsByCategoryModel;

  factory ResultsByCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsByCategoryModelFromJson(json);
}
