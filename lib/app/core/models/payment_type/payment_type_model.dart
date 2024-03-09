import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type_model.freezed.dart';
part 'payment_type_model.g.dart';

@freezed
class PaymentTypeModel with _$PaymentTypeModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory PaymentTypeModel({
    int? id,
    String? paymentName,
    String? paymentValue,
  }) = _PaymentTypeModel;

  factory PaymentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentTypeModelFromJson(json);
}
