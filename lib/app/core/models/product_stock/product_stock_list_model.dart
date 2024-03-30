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
    String? buyPrice,
    String? model,
    String? brandName,
    @Default(false) bool isSold,
    int? customerId,
    String? buyName,
    String? phone,
    int? number,
    String? buyAddress,
    String? sellerAddress,
    dynamic purchasedAt,
    String? salePrice,
    String? sellerName,
    dynamic sellerAt,
    @Default(false) bool hasPendency,
  }) = _ProductStockListModel;

  factory ProductStockListModel.fromJson(Map<String, dynamic> json) =>
      _$ProductStockListModelFromJson(json);
}
