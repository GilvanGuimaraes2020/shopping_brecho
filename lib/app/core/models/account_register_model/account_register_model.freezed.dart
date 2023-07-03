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
  String? get typeName => throw _privateConstructorUsedError;
  List<RegistersModel>? get registers => throw _privateConstructorUsedError;

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
  $Res call({String? typeName, List<RegistersModel>? registers});
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
    Object? typeName = freezed,
    Object? registers = freezed,
  }) {
    return _then(_value.copyWith(
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      registers: freezed == registers
          ? _value.registers
          : registers // ignore: cast_nullable_to_non_nullable
              as List<RegistersModel>?,
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
  $Res call({String? typeName, List<RegistersModel>? registers});
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
    Object? typeName = freezed,
    Object? registers = freezed,
  }) {
    return _then(_$_AccountRegisterModel(
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      registers: freezed == registers
          ? _value.registers
          : registers // ignore: cast_nullable_to_non_nullable
              as List<RegistersModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_AccountRegisterModel implements _AccountRegisterModel {
  _$_AccountRegisterModel({this.typeName, this.registers});

  factory _$_AccountRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountRegisterModelFromJson(json);

  @override
  final String? typeName;
  @override
  final List<RegistersModel>? registers;

  @override
  String toString() {
    return 'AccountRegisterModel(typeName: $typeName, registers: $registers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountRegisterModel &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            const DeepCollectionEquality().equals(other.registers, registers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, typeName, const DeepCollectionEquality().hash(registers));

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
      {final String? typeName,
      final List<RegistersModel>? registers}) = _$_AccountRegisterModel;

  factory _AccountRegisterModel.fromJson(Map<String, dynamic> json) =
      _$_AccountRegisterModel.fromJson;

  @override
  String? get typeName;
  @override
  List<RegistersModel>? get registers;
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
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
    TResult? Function()? none,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
    TResult Function()? none,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegisterData value) data,
    required TResult Function(AccountRegisterLoading value) loading,
    required TResult Function(AccountRegisterError value) error,
    required TResult Function(AccountRegisterNone value) none,
    required TResult Function(AccountRegisterEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterData value)? data,
    TResult? Function(AccountRegisterLoading value)? loading,
    TResult? Function(AccountRegisterError value)? error,
    TResult? Function(AccountRegisterNone value)? none,
    TResult? Function(AccountRegisterEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterData value)? data,
    TResult Function(AccountRegisterLoading value)? loading,
    TResult Function(AccountRegisterError value)? error,
    TResult Function(AccountRegisterNone value)? none,
    TResult Function(AccountRegisterEmpty value)? empty,
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
  const _$AccountRegisterData(this.listAccountRegister);

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
    required TResult Function() empty,
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
    TResult? Function()? empty,
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
    TResult Function()? empty,
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
    required TResult Function(AccountRegisterEmpty value) empty,
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
    TResult? Function(AccountRegisterEmpty value)? empty,
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
    TResult Function(AccountRegisterEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterData implements AccountRegister {
  const factory AccountRegisterData(
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
  const _$AccountRegisterLoading();

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
    required TResult Function() empty,
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
    TResult? Function()? empty,
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
    TResult Function()? empty,
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
    required TResult Function(AccountRegisterEmpty value) empty,
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
    TResult? Function(AccountRegisterEmpty value)? empty,
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
    TResult Function(AccountRegisterEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterLoading implements AccountRegister {
  const factory AccountRegisterLoading() = _$AccountRegisterLoading;
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
  const _$AccountRegisterError([this.error]);

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
    required TResult Function() empty,
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
    TResult? Function()? empty,
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
    TResult Function()? empty,
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
    required TResult Function(AccountRegisterEmpty value) empty,
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
    TResult? Function(AccountRegisterEmpty value)? empty,
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
    TResult Function(AccountRegisterEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterError implements AccountRegister {
  const factory AccountRegisterError([final Object? error]) =
      _$AccountRegisterError;

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
  const _$AccountRegisterNone();

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
    required TResult Function() empty,
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
    TResult? Function()? empty,
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
    TResult Function()? empty,
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
    required TResult Function(AccountRegisterEmpty value) empty,
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
    TResult? Function(AccountRegisterEmpty value)? empty,
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
    TResult Function(AccountRegisterEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterNone implements AccountRegister {
  const factory AccountRegisterNone() = _$AccountRegisterNone;
}

/// @nodoc
abstract class _$$AccountRegisterEmptyCopyWith<$Res> {
  factory _$$AccountRegisterEmptyCopyWith(_$AccountRegisterEmpty value,
          $Res Function(_$AccountRegisterEmpty) then) =
      __$$AccountRegisterEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountRegisterEmptyCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterEmpty>
    implements _$$AccountRegisterEmptyCopyWith<$Res> {
  __$$AccountRegisterEmptyCopyWithImpl(_$AccountRegisterEmpty _value,
      $Res Function(_$AccountRegisterEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountRegisterEmpty implements AccountRegisterEmpty {
  const _$AccountRegisterEmpty();

  @override
  String toString() {
    return 'AccountRegister.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountRegisterEmpty);
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
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
    TResult? Function()? none,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountRegisterModel> listAccountRegister)? data,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
    TResult Function()? none,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
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
    required TResult Function(AccountRegisterEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterData value)? data,
    TResult? Function(AccountRegisterLoading value)? loading,
    TResult? Function(AccountRegisterError value)? error,
    TResult? Function(AccountRegisterNone value)? none,
    TResult? Function(AccountRegisterEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterData value)? data,
    TResult Function(AccountRegisterLoading value)? loading,
    TResult Function(AccountRegisterError value)? error,
    TResult Function(AccountRegisterNone value)? none,
    TResult Function(AccountRegisterEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterEmpty implements AccountRegister {
  const factory AccountRegisterEmpty() = _$AccountRegisterEmpty;
}
