import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_sum_category_model.freezed.dart';
part 'account_sum_category_model.g.dart';

@freezed
class AccountSumCategoryModel with _$AccountSumCategoryModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory AccountSumCategoryModel(
      {String? accountDetail, String? sumCategory}) = _AccountSumCategoryModel;

  factory AccountSumCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AccountSumCategoryModelFromJson(json);
}
