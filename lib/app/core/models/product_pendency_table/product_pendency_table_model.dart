import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_pendency_table_model.freezed.dart';
part 'product_pendency_table_model.g.dart';

@freezed
class ProductPendencyTableModel with _$ProductPendencyTableModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ProductPendencyTableModel({
    int? id,
    int? productPendencyId,
    int? productStockId,
    String? pendencyName,
  }) = _ProductPendecyTableModel;

  factory ProductPendencyTableModel.fromJson(Map<String, dynamic> json) =>
      _$ProductPendencyTableModelFromJson(json);
}
