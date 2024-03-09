import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class RegisterSaleModel with _$RegisterSaleModel {
  factory RegisterSaleModel({
    required int productSellerId,
    required int productStockId,
    required int customerId,
    required int paymentType,
    double? sellerPrice,
    String? observation,
    dynamic createdAt,
    dynamic sellerAt,
  }) = _RegisterSaleModel;

  factory RegisterSaleModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterSaleModelFromJson(json);
}
