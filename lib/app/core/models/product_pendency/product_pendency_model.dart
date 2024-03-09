import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_pendency_model.freezed.dart';
part 'product_pendency_model.g.dart';

@freezed
class ProductPendencyModel with _$ProductPendencyModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ProductPendencyModel({int? id, String? pendencyName}) =
      _ProductPendencyModel;

  factory ProductPendencyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductPendencyModelFromJson(json);
}
