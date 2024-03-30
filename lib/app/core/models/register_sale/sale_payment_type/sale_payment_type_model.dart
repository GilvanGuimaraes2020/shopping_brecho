import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_payment_type_model.freezed.dart';
part 'sale_payment_type_model.g.dart';

@freezed
class SalePaymentTypeModel with _$SalePaymentTypeModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory SalePaymentTypeModel({
    String? paymentType,
    @Default(1.0) double value,
    @Default(1) int installment,
    @Default(false) bool isCreditCard,
  }) = _SalePaymentTypeModel;

  factory SalePaymentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$SalePaymentTypeModelFromJson(json);
}

@freezed
class SalePaymentTypeModelList with _$SalePaymentTypeModelList {
  factory SalePaymentTypeModelList(
          {required List<SalePaymentTypeModel> content}) =
      _SalePaymentTypeModelList;

  factory SalePaymentTypeModelList.fromJson(Map<String, dynamic> json) =>
      _$SalePaymentTypeModelListFromJson(json);
}
