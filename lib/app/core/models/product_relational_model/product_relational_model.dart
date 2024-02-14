import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_relational_model.freezed.dart';
part 'product_relational_model.g.dart';

@freezed
class ProductRelationalModel with _$ProductRelationalModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ProductRelationalModel({
    String? id,
    String? productCategoryId,
    String? brandId,
    String? model,
    String? oldCategoryId,
    DateTime? createdAt,
  }) = _ProductRelationalModel;

  factory ProductRelationalModel.fromJson(Map<String, dynamic> json) =>
      _$ProductRelationalModelFromJson(json);
}

@freezed
class ProductState with _$ProductState {
  const factory ProductState.data(
      List<ProductRelationalModel> productRelational) = ProductStateData;
  const factory ProductState.empty() = ProductStateEmpty;
  const factory ProductState.none() = ProductStateNone;
  const factory ProductState.loading() = ProductStateLoading;
  const factory ProductState.success([Object? data]) = ProductStateSuccess;
  const factory ProductState.error([Object? error]) = ProductStateError;
}
