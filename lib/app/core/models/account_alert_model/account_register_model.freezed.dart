// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountRegisterModel _$AccountRegisterModelFromJson(Map<String, dynamic> json) {
  return _AccountRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$AccountRegisterModel {
  String? get accountBank => throw _privateConstructorUsedError;
  double? get accountValue => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromJson)
  String? get date => throw _privateConstructorUsedError;
  String? get movementCurrency => throw _privateConstructorUsedError;
  String? get movementDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountRegisterModelCopyWith<AccountRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegisterModelCopyWith<$Res> {
  factory $AccountRegisterModelCopyWith(AccountRegisterModel value,
          $Res Function(AccountRegisterModel) then) =
      _$AccountRegisterModelCopyWithImpl<$Res, AccountRegisterModel>;
  @useResult
  $Res call(
      {String? accountBank,
      double? accountValue,
      @JsonKey(fromJson: _fromJson) String? date,
      String? movementCurrency,
      String? movementDetail});
}

/// @nodoc
class _$AccountRegisterModelCopyWithImpl<$Res,
        $Val extends AccountRegisterModel>
    implements $AccountRegisterModelCopyWith<$Res> {
  _$AccountRegisterModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccountRegisterModelCopyWith<$Res>
    implements $AccountRegisterModelCopyWith<$Res> {
  factory _$$_AccountRegisterModelCopyWith(_$_AccountRegisterModel value,
          $Res Function(_$_AccountRegisterModel) then) =
      __$$_AccountRegisterModelCopyWithImpl<$Res>;
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
class __$$_AccountRegisterModelCopyWithImpl<$Res>
    extends _$AccountRegisterModelCopyWithImpl<$Res, _$_AccountRegisterModel>
    implements _$$_AccountRegisterModelCopyWith<$Res> {
  __$$_AccountRegisterModelCopyWithImpl(_$_AccountRegisterModel _value,
      $Res Function(_$_AccountRegisterModel) _then)
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
    return _then(_$_AccountRegisterModel(
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
class _$_AccountRegisterModel implements _AccountRegisterModel {
  _$_AccountRegisterModel(
      {this.accountBank,
      this.accountValue,
      @JsonKey(fromJson: _fromJson) this.date,
      this.movementCurrency,
      this.movementDetail});

  factory _$_AccountRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountRegisterModelFromJson(json);

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
    return 'AccountRegisterModel(accountBank: $accountBank, accountValue: $accountValue, date: $date, movementCurrency: $movementCurrency, movementDetail: $movementDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountRegisterModel &&
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
  _$$_AccountRegisterModelCopyWith<_$_AccountRegisterModel> get copyWith =>
      __$$_AccountRegisterModelCopyWithImpl<_$_AccountRegisterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountRegisterModelToJson(
      this,
    );
  }
}

abstract class _AccountRegisterModel implements AccountRegisterModel {
  factory _AccountRegisterModel(
      {final String? accountBank,
      final double? accountValue,
      @JsonKey(fromJson: _fromJson) final String? date,
      final String? movementCurrency,
      final String? movementDetail}) = _$_AccountRegisterModel;

  factory _AccountRegisterModel.fromJson(Map<String, dynamic> json) =
      _$_AccountRegisterModel.fromJson;

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
  _$$_AccountRegisterModelCopyWith<_$_AccountRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountRegister {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountRegisterModel> listAccountRegister)
        data,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegisterData value) data,
    required TResult Function(AccountRegisterLoading value) loading,
    required TResult Function(AccountRegisterError value) error,
    required TResult Function(AccountRegisterNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterData value)? data,
    TResult? Function(AccountRegisterLoading value)? loading,
    TResult? Function(AccountRegisterError value)? error,
    TResult? Function(AccountRegisterNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterData value)? data,
    TResult Function(AccountRegisterLoading value)? loading,
    TResult Function(AccountRegisterError value)? error,
    TResult Function(AccountRegisterNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegisterCopyWith<$Res> {
  factory $AccountRegisterCopyWith(
          AccountRegister value, $Res Function(AccountRegister) then) =
      _$AccountRegisterCopyWithImpl<$Res, AccountRegister>;
}

/// @nodoc
class _$AccountRegisterCopyWithImpl<$Res, $Val extends AccountRegister>
    implements $AccountRegisterCopyWith<$Res> {
  _$AccountRegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountRegisterDataCopyWith<$Res> {
  factory _$$AccountRegisterDataCopyWith(_$AccountRegisterData value,
          $Res Function(_$AccountRegisterData) then) =
      __$$AccountRegisterDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AccountRegisterModel> listAccountRegister});
}

/// @nodoc
class __$$AccountRegisterDataCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterData>
    implements _$$AccountRegisterDataCopyWith<$Res> {
  __$$AccountRegisterDataCopyWithImpl(
      _$AccountRegisterData _value, $Res Function(_$AccountRegisterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listAccountRegister = null,
  }) {
    return _then(_$AccountRegisterData(
      null == listAccountRegister
          ? _value.listAccountRegister
          : listAccountRegister // ignore: cast_nullable_to_non_nullable
              as List<AccountRegisterModel>,
    ));
  }
}

/// @nodoc

class _$AccountRegisterData implements AccountRegisterData {
  _$AccountRegisterData(this.listAccountRegister);

  @override
  final List<AccountRegisterModel> listAccountRegister;

  @override
  String toString() {
    return 'AccountRegister.data(listAccountRegister: $listAccountRegister)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterData &&
            const DeepCollectionEquality()
                .equals(other.listAccountRegister, listAccountRegister));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listAccountRegister));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegisterDataCopyWith<_$AccountRegisterData> get copyWith =>
      __$$AccountRegisterDataCopyWithImpl<_$AccountRegisterData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountRegisterModel> listAccountRegister)
        data,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
    required TResult Function() none,
  }) {
    return data(listAccountRegister);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
    TResult? Function()? none,
  }) {
    return data?.call(listAccountRegister);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(listAccountRegister);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegisterData value) data,
    required TResult Function(AccountRegisterLoading value) loading,
    required TResult Function(AccountRegisterError value) error,
    required TResult Function(AccountRegisterNone value) none,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterData value)? data,
    TResult? Function(AccountRegisterLoading value)? loading,
    TResult? Function(AccountRegisterError value)? error,
    TResult? Function(AccountRegisterNone value)? none,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterData value)? data,
    TResult Function(AccountRegisterLoading value)? loading,
    TResult Function(AccountRegisterError value)? error,
    TResult Function(AccountRegisterNone value)? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterData implements AccountRegister {
  factory AccountRegisterData(
          final List<AccountRegisterModel> listAccountRegister) =
      _$AccountRegisterData;

  List<AccountRegisterModel> get listAccountRegister;
  @JsonKey(ignore: true)
  _$$AccountRegisterDataCopyWith<_$AccountRegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountRegisterLoadingCopyWith<$Res> {
  factory _$$AccountRegisterLoadingCopyWith(_$AccountRegisterLoading value,
          $Res Function(_$AccountRegisterLoading) then) =
      __$$AccountRegisterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountRegisterLoadingCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterLoading>
    implements _$$AccountRegisterLoadingCopyWith<$Res> {
  __$$AccountRegisterLoadingCopyWithImpl(_$AccountRegisterLoading _value,
      $Res Function(_$AccountRegisterLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountRegisterLoading implements AccountRegisterLoading {
  _$AccountRegisterLoading();

  @override
  String toString() {
    return 'AccountRegister.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountRegisterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountRegisterModel> listAccountRegister)
        data,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
    required TResult Function() none,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
    TResult? Function()? none,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
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
    required TResult Function(AccountRegisterData value) data,
    required TResult Function(AccountRegisterLoading value) loading,
    required TResult Function(AccountRegisterError value) error,
    required TResult Function(AccountRegisterNone value) none,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterData value)? data,
    TResult? Function(AccountRegisterLoading value)? loading,
    TResult? Function(AccountRegisterError value)? error,
    TResult? Function(AccountRegisterNone value)? none,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterData value)? data,
    TResult Function(AccountRegisterLoading value)? loading,
    TResult Function(AccountRegisterError value)? error,
    TResult Function(AccountRegisterNone value)? none,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterLoading implements AccountRegister {
  factory AccountRegisterLoading() = _$AccountRegisterLoading;
}

/// @nodoc
abstract class _$$AccountRegisterErrorCopyWith<$Res> {
  factory _$$AccountRegisterErrorCopyWith(_$AccountRegisterError value,
          $Res Function(_$AccountRegisterError) then) =
      __$$AccountRegisterErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$AccountRegisterErrorCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterError>
    implements _$$AccountRegisterErrorCopyWith<$Res> {
  __$$AccountRegisterErrorCopyWithImpl(_$AccountRegisterError _value,
      $Res Function(_$AccountRegisterError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AccountRegisterError(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$AccountRegisterError implements AccountRegisterError {
  _$AccountRegisterError([this.error]);

  @override
  final Object? error;

  @override
  String toString() {
    return 'AccountRegister.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegisterErrorCopyWith<_$AccountRegisterError> get copyWith =>
      __$$AccountRegisterErrorCopyWithImpl<_$AccountRegisterError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountRegisterModel> listAccountRegister)
        data,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
    required TResult Function() none,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
    TResult? Function()? none,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegisterData value) data,
    required TResult Function(AccountRegisterLoading value) loading,
    required TResult Function(AccountRegisterError value) error,
    required TResult Function(AccountRegisterNone value) none,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterData value)? data,
    TResult? Function(AccountRegisterLoading value)? loading,
    TResult? Function(AccountRegisterError value)? error,
    TResult? Function(AccountRegisterNone value)? none,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterData value)? data,
    TResult Function(AccountRegisterLoading value)? loading,
    TResult Function(AccountRegisterError value)? error,
    TResult Function(AccountRegisterNone value)? none,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterError implements AccountRegister {
  factory AccountRegisterError([final Object? error]) = _$AccountRegisterError;

  Object? get error;
  @JsonKey(ignore: true)
  _$$AccountRegisterErrorCopyWith<_$AccountRegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountRegisterNoneCopyWith<$Res> {
  factory _$$AccountRegisterNoneCopyWith(_$AccountRegisterNone value,
          $Res Function(_$AccountRegisterNone) then) =
      __$$AccountRegisterNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountRegisterNoneCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterNone>
    implements _$$AccountRegisterNoneCopyWith<$Res> {
  __$$AccountRegisterNoneCopyWithImpl(
      _$AccountRegisterNone _value, $Res Function(_$AccountRegisterNone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountRegisterNone implements AccountRegisterNone {
  _$AccountRegisterNone();

  @override
  String toString() {
    return 'AccountRegister.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountRegisterNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountRegisterModel> listAccountRegister)
        data,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
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
    required TResult Function(AccountRegisterData value) data,
    required TResult Function(AccountRegisterLoading value) loading,
    required TResult Function(AccountRegisterError value) error,
    required TResult Function(AccountRegisterNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterData value)? data,
    TResult? Function(AccountRegisterLoading value)? loading,
    TResult? Function(AccountRegisterError value)? error,
    TResult? Function(AccountRegisterNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterData value)? data,
    TResult Function(AccountRegisterLoading value)? loading,
    TResult Function(AccountRegisterError value)? error,
    TResult Function(AccountRegisterNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterNone implements AccountRegister {
  factory AccountRegisterNone() = _$AccountRegisterNone;
}
