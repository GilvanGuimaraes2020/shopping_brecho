// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_sum_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountSumCategoryModel _$AccountSumCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _AccountSumCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$AccountSumCategoryModel {
  String? get accountDetail => throw _privateConstructorUsedError;
  String? get sumCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountSumCategoryModelCopyWith<AccountSumCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSumCategoryModelCopyWith<$Res> {
  factory $AccountSumCategoryModelCopyWith(AccountSumCategoryModel value,
          $Res Function(AccountSumCategoryModel) then) =
      _$AccountSumCategoryModelCopyWithImpl<$Res, AccountSumCategoryModel>;
  @useResult
  $Res call({String? accountDetail, String? sumCategory});
}

/// @nodoc
class _$AccountSumCategoryModelCopyWithImpl<$Res,
        $Val extends AccountSumCategoryModel>
    implements $AccountSumCategoryModelCopyWith<$Res> {
  _$AccountSumCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountDetail = freezed,
    Object? sumCategory = freezed,
  }) {
    return _then(_value.copyWith(
      accountDetail: freezed == accountDetail
          ? _value.accountDetail
          : accountDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      sumCategory: freezed == sumCategory
          ? _value.sumCategory
          : sumCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountSumCategoryModelCopyWith<$Res>
    implements $AccountSumCategoryModelCopyWith<$Res> {
  factory _$$_AccountSumCategoryModelCopyWith(_$_AccountSumCategoryModel value,
          $Res Function(_$_AccountSumCategoryModel) then) =
      __$$_AccountSumCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accountDetail, String? sumCategory});
}

/// @nodoc
class __$$_AccountSumCategoryModelCopyWithImpl<$Res>
    extends _$AccountSumCategoryModelCopyWithImpl<$Res,
        _$_AccountSumCategoryModel>
    implements _$$_AccountSumCategoryModelCopyWith<$Res> {
  __$$_AccountSumCategoryModelCopyWithImpl(_$_AccountSumCategoryModel _value,
      $Res Function(_$_AccountSumCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountDetail = freezed,
    Object? sumCategory = freezed,
  }) {
    return _then(_$_AccountSumCategoryModel(
      accountDetail: freezed == accountDetail
          ? _value.accountDetail
          : accountDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      sumCategory: freezed == sumCategory
          ? _value.sumCategory
          : sumCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_AccountSumCategoryModel implements _AccountSumCategoryModel {
  _$_AccountSumCategoryModel({this.accountDetail, this.sumCategory});

  factory _$_AccountSumCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountSumCategoryModelFromJson(json);

  @override
  final String? accountDetail;
  @override
  final String? sumCategory;

  @override
  String toString() {
    return 'AccountSumCategoryModel(accountDetail: $accountDetail, sumCategory: $sumCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSumCategoryModel &&
            (identical(other.accountDetail, accountDetail) ||
                other.accountDetail == accountDetail) &&
            (identical(other.sumCategory, sumCategory) ||
                other.sumCategory == sumCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountDetail, sumCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSumCategoryModelCopyWith<_$_AccountSumCategoryModel>
      get copyWith =>
          __$$_AccountSumCategoryModelCopyWithImpl<_$_AccountSumCategoryModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountSumCategoryModelToJson(
      this,
    );
  }
}

abstract class _AccountSumCategoryModel implements AccountSumCategoryModel {
  factory _AccountSumCategoryModel(
      {final String? accountDetail,
      final String? sumCategory}) = _$_AccountSumCategoryModel;

  factory _AccountSumCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_AccountSumCategoryModel.fromJson;

  @override
  String? get accountDetail;
  @override
  String? get sumCategory;
  @override
  @JsonKey(ignore: true)
  _$$_AccountSumCategoryModelCopyWith<_$_AccountSumCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
