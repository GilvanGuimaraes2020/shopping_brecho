import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category_model.freezed.dart';
part 'product_category_model.g.dart';

@freezed
class ProductCategoryModel with _$ProductCategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ProductCategoryModel({
    int? id,
    String? categoryName,
    String? categoryValue,
    String? color,
  }) = _ProductCategoryModel;

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryModelFromJson(json);
}

@freezed
class ProductCategoryState with _$ProductCategoryState {
  const factory ProductCategoryState.data(
      List<ProductCategoryModel> productModel) = ProductCategoryStateData;

  const factory ProductCategoryState.loading() = ProductCategoryStateLoading;
  const factory ProductCategoryState.empty() = ProductCategoryStateEmpty;
  const factory ProductCategoryState.error([Object? error]) =
      ProductCategoryStateError;
}
