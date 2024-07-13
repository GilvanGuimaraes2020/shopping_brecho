// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AccountRegisterModelImplCopyWith<$Res>
    implements $AccountRegisterModelCopyWith<$Res> {
  factory _$$AccountRegisterModelImplCopyWith(_$AccountRegisterModelImpl value,
          $Res Function(_$AccountRegisterModelImpl) then) =
      __$$AccountRegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? typeName, List<RegistersModel>? registers});
}

/// @nodoc
class __$$AccountRegisterModelImplCopyWithImpl<$Res>
    extends _$AccountRegisterModelCopyWithImpl<$Res, _$AccountRegisterModelImpl>
    implements _$$AccountRegisterModelImplCopyWith<$Res> {
  __$$AccountRegisterModelImplCopyWithImpl(_$AccountRegisterModelImpl _value,
      $Res Function(_$AccountRegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = freezed,
    Object? registers = freezed,
  }) {
    return _then(_$AccountRegisterModelImpl(
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
class _$AccountRegisterModelImpl implements _AccountRegisterModel {
  _$AccountRegisterModelImpl({this.typeName, this.registers});

  factory _$AccountRegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountRegisterModelImplFromJson(json);

  @override
  final String? typeName;
  @override
  final List<RegistersModel>? registers;

  @override
  String toString() {
    return 'AccountRegisterModel(typeName: $typeName, registers: $registers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterModelImpl &&
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
  _$$AccountRegisterModelImplCopyWith<_$AccountRegisterModelImpl>
      get copyWith =>
          __$$AccountRegisterModelImplCopyWithImpl<_$AccountRegisterModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountRegisterModelImplToJson(
      this,
    );
  }
}

abstract class _AccountRegisterModel implements AccountRegisterModel {
  factory _AccountRegisterModel(
      {final String? typeName,
      final List<RegistersModel>? registers}) = _$AccountRegisterModelImpl;

  factory _AccountRegisterModel.fromJson(Map<String, dynamic> json) =
      _$AccountRegisterModelImpl.fromJson;

  @override
  String? get typeName;
  @override
  List<RegistersModel>? get registers;
  @override
  @JsonKey(ignore: true)
  _$$AccountRegisterModelImplCopyWith<_$AccountRegisterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$AccountRegisterDataImplCopyWith<$Res> {
  factory _$$AccountRegisterDataImplCopyWith(_$AccountRegisterDataImpl value,
          $Res Function(_$AccountRegisterDataImpl) then) =
      __$$AccountRegisterDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AccountRegisterModel> listAccountRegister});
}

/// @nodoc
class __$$AccountRegisterDataImplCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterDataImpl>
    implements _$$AccountRegisterDataImplCopyWith<$Res> {
  __$$AccountRegisterDataImplCopyWithImpl(_$AccountRegisterDataImpl _value,
      $Res Function(_$AccountRegisterDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listAccountRegister = null,
  }) {
    return _then(_$AccountRegisterDataImpl(
      null == listAccountRegister
          ? _value.listAccountRegister
          : listAccountRegister // ignore: cast_nullable_to_non_nullable
              as List<AccountRegisterModel>,
    ));
  }
}

/// @nodoc

class _$AccountRegisterDataImpl implements AccountRegisterData {
  const _$AccountRegisterDataImpl(this.listAccountRegister);

  @override
  final List<AccountRegisterModel> listAccountRegister;

  @override
  String toString() {
    return 'AccountRegister.data(listAccountRegister: $listAccountRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterDataImpl &&
            const DeepCollectionEquality()
                .equals(other.listAccountRegister, listAccountRegister));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listAccountRegister));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegisterDataImplCopyWith<_$AccountRegisterDataImpl> get copyWith =>
      __$$AccountRegisterDataImplCopyWithImpl<_$AccountRegisterDataImpl>(
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
      _$AccountRegisterDataImpl;

  List<AccountRegisterModel> get listAccountRegister;
  @JsonKey(ignore: true)
  _$$AccountRegisterDataImplCopyWith<_$AccountRegisterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountRegisterLoadingImplCopyWith<$Res> {
  factory _$$AccountRegisterLoadingImplCopyWith(
          _$AccountRegisterLoadingImpl value,
          $Res Function(_$AccountRegisterLoadingImpl) then) =
      __$$AccountRegisterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountRegisterLoadingImplCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterLoadingImpl>
    implements _$$AccountRegisterLoadingImplCopyWith<$Res> {
  __$$AccountRegisterLoadingImplCopyWithImpl(
      _$AccountRegisterLoadingImpl _value,
      $Res Function(_$AccountRegisterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountRegisterLoadingImpl implements AccountRegisterLoading {
  const _$AccountRegisterLoadingImpl();

  @override
  String toString() {
    return 'AccountRegister.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterLoadingImpl);
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
  const factory AccountRegisterLoading() = _$AccountRegisterLoadingImpl;
}

/// @nodoc
abstract class _$$AccountRegisterErrorImplCopyWith<$Res> {
  factory _$$AccountRegisterErrorImplCopyWith(_$AccountRegisterErrorImpl value,
          $Res Function(_$AccountRegisterErrorImpl) then) =
      __$$AccountRegisterErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$AccountRegisterErrorImplCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterErrorImpl>
    implements _$$AccountRegisterErrorImplCopyWith<$Res> {
  __$$AccountRegisterErrorImplCopyWithImpl(_$AccountRegisterErrorImpl _value,
      $Res Function(_$AccountRegisterErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AccountRegisterErrorImpl(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$AccountRegisterErrorImpl implements AccountRegisterError {
  const _$AccountRegisterErrorImpl([this.error]);

  @override
  final Object? error;

  @override
  String toString() {
    return 'AccountRegister.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegisterErrorImplCopyWith<_$AccountRegisterErrorImpl>
      get copyWith =>
          __$$AccountRegisterErrorImplCopyWithImpl<_$AccountRegisterErrorImpl>(
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
      _$AccountRegisterErrorImpl;

  Object? get error;
  @JsonKey(ignore: true)
  _$$AccountRegisterErrorImplCopyWith<_$AccountRegisterErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountRegisterNoneImplCopyWith<$Res> {
  factory _$$AccountRegisterNoneImplCopyWith(_$AccountRegisterNoneImpl value,
          $Res Function(_$AccountRegisterNoneImpl) then) =
      __$$AccountRegisterNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountRegisterNoneImplCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterNoneImpl>
    implements _$$AccountRegisterNoneImplCopyWith<$Res> {
  __$$AccountRegisterNoneImplCopyWithImpl(_$AccountRegisterNoneImpl _value,
      $Res Function(_$AccountRegisterNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountRegisterNoneImpl implements AccountRegisterNone {
  const _$AccountRegisterNoneImpl();

  @override
  String toString() {
    return 'AccountRegister.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterNoneImpl);
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
  const factory AccountRegisterNone() = _$AccountRegisterNoneImpl;
}

/// @nodoc
abstract class _$$AccountRegisterEmptyImplCopyWith<$Res> {
  factory _$$AccountRegisterEmptyImplCopyWith(_$AccountRegisterEmptyImpl value,
          $Res Function(_$AccountRegisterEmptyImpl) then) =
      __$$AccountRegisterEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountRegisterEmptyImplCopyWithImpl<$Res>
    extends _$AccountRegisterCopyWithImpl<$Res, _$AccountRegisterEmptyImpl>
    implements _$$AccountRegisterEmptyImplCopyWith<$Res> {
  __$$AccountRegisterEmptyImplCopyWithImpl(_$AccountRegisterEmptyImpl _value,
      $Res Function(_$AccountRegisterEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountRegisterEmptyImpl implements AccountRegisterEmpty {
  const _$AccountRegisterEmptyImpl();

  @override
  String toString() {
    return 'AccountRegister.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterEmptyImpl);
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
  const factory AccountRegisterEmpty() = _$AccountRegisterEmptyImpl;
}
