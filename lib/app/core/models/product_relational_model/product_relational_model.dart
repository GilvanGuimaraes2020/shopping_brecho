import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_relational_model.freezed.dart';
part 'product_relational_model.g.dart';

@freezed
class ProductRelationalModel with _$ProductRelationalModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ProductRelationalModel({
    int? id,  
    int? productCategoryId,
    String? categoryName,
    int? brandId,
    String? model,
    int? oldCategoryId,
    String? brandName,
    @Default([]) List<int> oldCategoryIdList,
    dynamic createdAt,
  }) = _ProductRelationalModel;

  factory ProductRelationalModel.fromJson(Map<String, dynamic> json) =>
      _$ProductRelationalModelFromJson(json);
}
