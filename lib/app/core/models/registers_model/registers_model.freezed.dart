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
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  String? get date => throw _privateConstructorUsedError;
  String? get movementCurrency => throw _privateConstructorUsedError;
  String? get movementDetail => throw _privateConstructorUsedError;
  int? get installment => throw _privateConstructorUsedError;

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
      @JsonKey(fromJson: _fromJson, toJson: _toJson) String? date,
      String? movementCurrency,
      String? movementDetail,
      int? installment});
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
    Object? installment = freezed,
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
      installment: freezed == installment
          ? _value.installment
          : installment // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(fromJson: _fromJson, toJson: _toJson) String? date,
      String? movementCurrency,
      String? movementDetail,
      int? installment});
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
    Object? installment = freezed,
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
      installment: freezed == installment
          ? _value.installment
          : installment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_RegistersModel implements _RegistersModel {
  _$_RegistersModel(
      {this.accountBank,
      this.accountValue,
      @JsonKey(fromJson: _fromJson, toJson: _toJson) this.date,
      this.movementCurrency,
      this.movementDetail,
      this.installment});

  factory _$_RegistersModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegistersModelFromJson(json);

  @override
  final String? accountBank;
  @override
  final double? accountValue;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final String? date;
  @override
  final String? movementCurrency;
  @override
  final String? movementDetail;
  @override
  final int? installment;

  @override
  String toString() {
    return 'RegistersModel(accountBank: $accountBank, accountValue: $accountValue, date: $date, movementCurrency: $movementCurrency, movementDetail: $movementDetail, installment: $installment)';
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
                other.movementDetail == movementDetail) &&
            (identical(other.installment, installment) ||
                other.installment == installment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountBank, accountValue, date,
      movementCurrency, movementDetail, installment);

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
      @JsonKey(fromJson: _fromJson, toJson: _toJson) final String? date,
      final String? movementCurrency,
      final String? movementDetail,
      final int? installment}) = _$_RegistersModel;

  factory _RegistersModel.fromJson(Map<String, dynamic> json) =
      _$_RegistersModel.fromJson;

  @override
  String? get accountBank;
  @override
  double? get accountValue;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  String? get date;
  @override
  String? get movementCurrency;
  @override
  String? get movementDetail;
  @override
  int? get installment;
  @override
  @JsonKey(ignore: true)
  _$$_RegistersModelCopyWith<_$_RegistersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Registers {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RegistersModel> registersModel) data,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RegistersModel> registersModel)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RegistersModel> registersModel)? data,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistersData value) data,
    required TResult Function(RegistersLoading value) loading,
    required TResult Function(RegistersError value) error,
    required TResult Function(RegistersNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersData value)? data,
    TResult? Function(RegistersLoading value)? loading,
    TResult? Function(RegistersError value)? error,
    TResult? Function(RegistersNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersData value)? data,
    TResult Function(RegistersLoading value)? loading,
    TResult Function(RegistersError value)? error,
    TResult Function(RegistersNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistersCopyWith<$Res> {
  factory $RegistersCopyWith(Registers value, $Res Function(Registers) then) =
      _$RegistersCopyWithImpl<$Res, Registers>;
}

/// @nodoc
class _$RegistersCopyWithImpl<$Res, $Val extends Registers>
    implements $RegistersCopyWith<$Res> {
  _$RegistersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistersDataCopyWith<$Res> {
  factory _$$RegistersDataCopyWith(
          _$RegistersData value, $Res Function(_$RegistersData) then) =
      __$$RegistersDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RegistersModel> registersModel});
}

/// @nodoc
class __$$RegistersDataCopyWithImpl<$Res>
    extends _$RegistersCopyWithImpl<$Res, _$RegistersData>
    implements _$$RegistersDataCopyWith<$Res> {
  __$$RegistersDataCopyWithImpl(
      _$RegistersData _value, $Res Function(_$RegistersData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registersModel = null,
  }) {
    return _then(_$RegistersData(
      null == registersModel
          ? _value.registersModel
          : registersModel // ignore: cast_nullable_to_non_nullable
              as List<RegistersModel>,
    ));
  }
}

/// @nodoc

class _$RegistersData implements RegistersData {
  _$RegistersData(this.registersModel);

  @override
  final List<RegistersModel> registersModel;

  @override
  String toString() {
    return 'Registers.data(registersModel: $registersModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistersData &&
            const DeepCollectionEquality()
                .equals(other.registersModel, registersModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(registersModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistersDataCopyWith<_$RegistersData> get copyWith =>
      __$$RegistersDataCopyWithImpl<_$RegistersData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RegistersModel> registersModel) data,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() none,
  }) {
    return data(registersModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RegistersModel> registersModel)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? none,
  }) {
    return data?.call(registersModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RegistersModel> registersModel)? data,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(registersModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistersData value) data,
    required TResult Function(RegistersLoading value) loading,
    required TResult Function(RegistersError value) error,
    required TResult Function(RegistersNone value) none,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersData value)? data,
    TResult? Function(RegistersLoading value)? loading,
    TResult? Function(RegistersError value)? error,
    TResult? Function(RegistersNone value)? none,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersData value)? data,
    TResult Function(RegistersLoading value)? loading,
    TResult Function(RegistersError value)? error,
    TResult Function(RegistersNone value)? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class RegistersData implements Registers {
  factory RegistersData(final List<RegistersModel> registersModel) =
      _$RegistersData;

  List<RegistersModel> get registersModel;
  @JsonKey(ignore: true)
  _$$RegistersDataCopyWith<_$RegistersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistersLoadingCopyWith<$Res> {
  factory _$$RegistersLoadingCopyWith(
          _$RegistersLoading value, $Res Function(_$RegistersLoading) then) =
      __$$RegistersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistersLoadingCopyWithImpl<$Res>
    extends _$RegistersCopyWithImpl<$Res, _$RegistersLoading>
    implements _$$RegistersLoadingCopyWith<$Res> {
  __$$RegistersLoadingCopyWithImpl(
      _$RegistersLoading _value, $Res Function(_$RegistersLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistersLoading implements RegistersLoading {
  _$RegistersLoading();

  @override
  String toString() {
    return 'Registers.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RegistersModel> registersModel) data,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() none,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RegistersModel> registersModel)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? none,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RegistersModel> registersModel)? data,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistersData value) data,
    required TResult Function(RegistersLoading value) loading,
    required TResult Function(RegistersError value) error,
    required TResult Function(RegistersNone value) none,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersData value)? data,
    TResult? Function(RegistersLoading value)? loading,
    TResult? Function(RegistersError value)? error,
    TResult? Function(RegistersNone value)? none,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersData value)? data,
    TResult Function(RegistersLoading value)? loading,
    TResult Function(RegistersError value)? error,
    TResult Function(RegistersNone value)? none,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistersLoading implements Registers {
  factory RegistersLoading() = _$RegistersLoading;
}

/// @nodoc
abstract class _$$RegistersErrorCopyWith<$Res> {
  factory _$$RegistersErrorCopyWith(
          _$RegistersError value, $Res Function(_$RegistersError) then) =
      __$$RegistersErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistersErrorCopyWithImpl<$Res>
    extends _$RegistersCopyWithImpl<$Res, _$RegistersError>
    implements _$$RegistersErrorCopyWith<$Res> {
  __$$RegistersErrorCopyWithImpl(
      _$RegistersError _value, $Res Function(_$RegistersError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistersError implements RegistersError {
  _$RegistersError();

  @override
  String toString() {
    return 'Registers.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistersError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RegistersModel> registersModel) data,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() none,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RegistersModel> registersModel)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? none,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RegistersModel> registersModel)? data,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistersData value) data,
    required TResult Function(RegistersLoading value) loading,
    required TResult Function(RegistersError value) error,
    required TResult Function(RegistersNone value) none,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersData value)? data,
    TResult? Function(RegistersLoading value)? loading,
    TResult? Function(RegistersError value)? error,
    TResult? Function(RegistersNone value)? none,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersData value)? data,
    TResult Function(RegistersLoading value)? loading,
    TResult Function(RegistersError value)? error,
    TResult Function(RegistersNone value)? none,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegistersError implements Registers {
  factory RegistersError() = _$RegistersError;
}

/// @nodoc
abstract class _$$RegistersNoneCopyWith<$Res> {
  factory _$$RegistersNoneCopyWith(
          _$RegistersNone value, $Res Function(_$RegistersNone) then) =
      __$$RegistersNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistersNoneCopyWithImpl<$Res>
    extends _$RegistersCopyWithImpl<$Res, _$RegistersNone>
    implements _$$RegistersNoneCopyWith<$Res> {
  __$$RegistersNoneCopyWithImpl(
      _$RegistersNone _value, $Res Function(_$RegistersNone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistersNone implements RegistersNone {
  _$RegistersNone();

  @override
  String toString() {
    return 'Registers.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistersNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RegistersModel> registersModel) data,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RegistersModel> registersModel)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RegistersModel> registersModel)? data,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistersData value) data,
    required TResult Function(RegistersLoading value) loading,
    required TResult Function(RegistersError value) error,
    required TResult Function(RegistersNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersData value)? data,
    TResult? Function(RegistersLoading value)? loading,
    TResult? Function(RegistersError value)? error,
    TResult? Function(RegistersNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersData value)? data,
    TResult Function(RegistersLoading value)? loading,
    TResult Function(RegistersError value)? error,
    TResult Function(RegistersNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class RegistersNone implements Registers {
  factory RegistersNone() = _$RegistersNone;
}
