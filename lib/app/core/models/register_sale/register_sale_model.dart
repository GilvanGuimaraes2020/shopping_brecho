import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_sale_model.freezed.dart';
part 'register_sale_model.g.dart';

@freezed
class RegisterSaleModel with _$RegisterSaleModel {
  factory RegisterSaleModel({
     int? productSellerId,
    required int productStockId,
    required int customerId,
    double? sellerPrice,
    String? observation,
    dynamic createdAt,
    dynamic sellerAt,
  }) = _RegisterSaleModel;

  factory RegisterSaleModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterSaleModelFromJson(json);
}
