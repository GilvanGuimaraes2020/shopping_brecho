import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class BrandModel with _$BrandModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory BrandModel({
    String? id,
    String? brandName,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

@freezed
class BrandState with _$BrandState {
  const factory BrandState.data(List<BrandModel> brandModel) = BrandStateData;
  const factory BrandState.loading() = BrandStateLoading;
  const factory BrandState.error([Object? error]) = BrandStateError;
  const factory BrandState.empty() = BrandStateEmpty;
}
