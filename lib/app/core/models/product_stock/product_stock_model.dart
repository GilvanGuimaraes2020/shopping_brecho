import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_stock_model.freezed.dart';
part 'product_stock_model.g.dart';

@freezed
class ProductStockModel with _$ProductStockModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ProductStockModel({
    int? id,
    int? productId,
    int? customerId,
    dynamic createdAt,
    dynamic purchasedAt,
    @Default([]) List<int> pendencyList,
    int? paymentTypeId,
    double? price,
    @Default(false) bool isSold,
  }) = _ProductStockModel;

  factory ProductStockModel.fromJson(Map<String, dynamic> json) =>
      _$ProductStockModelFromJson(json);
}
