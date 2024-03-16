import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_stock_list_model.freezed.dart';
part 'product_stock_list_model.g.dart';

@freezed
class ProductStockListModel with _$ProductStockListModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ProductStockListModel({
    int? productStockId,
    int? productId,
    String? categoryName,
    String? categoryValue,
    String? color,
    String? price,
    String? model,
    String? brandName,
    @Default(false) bool isSold,
    int? customerId,
    String? name,
    String? phone,
    int? number,
    String? address,
    dynamic purchasedAt,
    @Default(false) bool hasPendency,
  }) = _ProductStockListModel;

  factory ProductStockListModel.fromJson(Map<String, dynamic> json) =>
      _$ProductStockListModelFromJson(json);
}
