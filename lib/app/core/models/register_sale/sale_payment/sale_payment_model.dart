import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_payment_model.freezed.dart';
part 'sale_payment_model.g.dart';

@freezed
class SalePaymentModel with _$SalePaymentModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory SalePaymentModel({
     int? salePaymentId,
    required int productSellerId,
    required int paymentType,
    @Default(0.0) double provisionedValue,
    dynamic createdAt,
    dynamic provisionedAt,
    @Default(1) int installmentOrder,
  }) = _SalePaymentModel;

  factory SalePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$SalePaymentModelFromJson(json);
}
