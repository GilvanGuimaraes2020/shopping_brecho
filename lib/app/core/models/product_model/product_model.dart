import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  @JsonSerializable()
  factory ProductModel(
      {String? id, String? brand, String? model, String? type}) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product.data(List<ProductModel> productModel) = ProductData;
  const factory Product.empty() = ProductEmpty;
  const factory Product.none() = ProductNone;
  const factory Product.loading() = ProductLoading;
  const factory Product.error([Object? error]) = ProductError;
}
