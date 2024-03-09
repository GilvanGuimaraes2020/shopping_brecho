import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory CustomerModel({
    int? id,
    String? name,
    String? phone,
    String? address,
    String? neighborhood,
    int? number,
    String? observation,
    dynamic createdAt,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
