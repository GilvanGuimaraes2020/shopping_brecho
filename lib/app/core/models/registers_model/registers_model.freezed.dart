// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistersModel _$RegistersModelFromJson(Map<String, dynamic> json) {
  return _RegistersModel.fromJson(json);
}

/// @nodoc
mixin _$RegistersModel {
  String? get accountBank => throw _privateConstructorUsedError;
  double? get accountValue => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromJson)
  String? get date => throw _privateConstructorUsedError;
  String? get movementCurrency => throw _privateConstructorUsedError;
  String? get movementDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistersModelCopyWith<RegistersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistersModelCopyWith<$Res> {
  factory $RegistersModelCopyWith(
          RegistersModel value, $Res Function(RegistersModel) then) =
      _$RegistersModelCopyWithImpl<$Res, RegistersModel>;
  @useResult
  $Res call(
      {String? accountBank,
      double? accountValue,
      @JsonKey(fromJson: _fromJson) String? date,
      String? movementCurrency,
      String? movementDetail});
}

/// @nodoc
class _$RegistersModelCopyWithImpl<$Res, $Val extends RegistersModel>
    implements $RegistersModelCopyWith<$Res> {
  _$RegistersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBank = freezed,
    Object? accountValue = freezed,
    Object? date = freezed,
    Object? movementCurrency = freezed,
    Object? movementDetail = freezed,
  }) {
    return _then(_value.copyWith(
      accountBank: freezed == accountBank
          ? _value.accountBank
          : accountBank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountValue: freezed == accountValue
          ? _value.accountValue
          : accountValue // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      movementCurrency: freezed == movementCurrency
          ? _value.movementCurrency
          : movementCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      movementDetail: freezed == movementDetail
          ? _value.movementDetail
          : movementDetail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistersModelCopyWith<$Res>
    implements $RegistersModelCopyWith<$Res> {
  factory _$$_RegistersModelCopyWith(
          _$_RegistersModel value, $Res Function(_$_RegistersModel) then) =
      __$$_RegistersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountBank,
      double? accountValue,
      @JsonKey(fromJson: _fromJson) String? date,
      String? movementCurrency,
      String? movementDetail});
}

/// @nodoc
class __$$_RegistersModelCopyWithImpl<$Res>
    extends _$RegistersModelCopyWithImpl<$Res, _$_RegistersModel>
    implements _$$_RegistersModelCopyWith<$Res> {
  __$$_RegistersModelCopyWithImpl(
      _$_RegistersModel _value, $Res Function(_$_RegistersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBank = freezed,
    Object? accountValue = freezed,
    Object? date = freezed,
    Object? movementCurrency = freezed,
    Object? movementDetail = freezed,
  }) {
    return _then(_$_RegistersModel(
      accountBank: freezed == accountBank
          ? _value.accountBank
          : accountBank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountValue: freezed == accountValue
          ? _value.accountValue
          : accountValue // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      movementCurrency: freezed == movementCurrency
          ? _value.movementCurrency
          : movementCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      movementDetail: freezed == movementDetail
          ? _value.movementDetail
          : movementDetail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_RegistersModel implements _RegistersModel {
  _$_RegistersModel(
      {this.accountBank,
      this.accountValue,
      @JsonKey(fromJson: _fromJson) this.date,
      this.movementCurrency,
      this.movementDetail});

  factory _$_RegistersModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegistersModelFromJson(json);

  @override
  final String? accountBank;
  @override
  final double? accountValue;
  @override
  @JsonKey(fromJson: _fromJson)
  final String? date;
  @override
  final String? movementCurrency;
  @override
  final String? movementDetail;

  @override
  String toString() {
    return 'RegistersModel(accountBank: $accountBank, accountValue: $accountValue, date: $date, movementCurrency: $movementCurrency, movementDetail: $movementDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistersModel &&
            (identical(other.accountBank, accountBank) ||
                other.accountBank == accountBank) &&
            (identical(other.accountValue, accountValue) ||
                other.accountValue == accountValue) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.movementCurrency, movementCurrency) ||
                other.movementCurrency == movementCurrency) &&
            (identical(other.movementDetail, movementDetail) ||
                other.movementDetail == movementDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountBank, accountValue, date,
      movementCurrency, movementDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistersModelCopyWith<_$_RegistersModel> get copyWith =>
      __$$_RegistersModelCopyWithImpl<_$_RegistersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistersModelToJson(
      this,
    );
  }
}

abstract class _RegistersModel implements RegistersModel {
  factory _RegistersModel(
      {final String? accountBank,
      final double? accountValue,
      @JsonKey(fromJson: _fromJson) final String? date,
      final String? movementCurrency,
      final String? movementDetail}) = _$_RegistersModel;

  factory _RegistersModel.fromJson(Map<String, dynamic> json) =
      _$_RegistersModel.fromJson;

  @override
  String? get accountBank;
  @override
  double? get accountValue;
  @override
  @JsonKey(fromJson: _fromJson)
  String? get date;
  @override
  String? get movementCurrency;
  @override
  String? get movementDetail;
  @override
  @JsonKey(ignore: true)
  _$$_RegistersModelCopyWith<_$_RegistersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
