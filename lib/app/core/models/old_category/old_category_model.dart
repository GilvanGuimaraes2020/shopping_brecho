import 'package:freezed_annotation/freezed_annotation.dart';

part 'old_category_model.freezed.dart';
part 'old_category_model.g.dart';

@freezed
class OldCategoryModel with _$OldCategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory OldCategoryModel({
    String? id,
    int? categoryNumber,
    String? categoryLabel,
    String? categoryDescription,
  }) = _OldCategoryModel;

  factory OldCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$OldCategoryModelFromJson(json);
}

@freezed
class OldCategoryState with _$OldCategoryState {
  const factory OldCategoryState.data(List<OldCategoryModel> oldCategory) =
      OldCategoryStateData;
  const factory OldCategoryState.empty() = OldCategoryStateEmpty;
  const factory OldCategoryState.loading() = OldCategoryStateLoading;
  const factory OldCategoryState.error([Object? error]) = OldCategoryStateError;
}
