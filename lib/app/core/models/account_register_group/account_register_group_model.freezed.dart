// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_register_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountRegisterGroupModel _$AccountRegisterGroupModelFromJson(
    Map<String, dynamic> json) {
  return _AccountRegisterGroupModel.fromJson(json);
}

/// @nodoc
mixin _$AccountRegisterGroupModel {
  String? get group => throw _privateConstructorUsedError;
  AccountRegisterModel? get register => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountRegisterGroupModelCopyWith<AccountRegisterGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegisterGroupModelCopyWith<$Res> {
  factory $AccountRegisterGroupModelCopyWith(AccountRegisterGroupModel value,
          $Res Function(AccountRegisterGroupModel) then) =
      _$AccountRegisterGroupModelCopyWithImpl<$Res, AccountRegisterGroupModel>;
  @useResult
  $Res call({String? group, AccountRegisterModel? register});

  $AccountRegisterModelCopyWith<$Res>? get register;
}

/// @nodoc
class _$AccountRegisterGroupModelCopyWithImpl<$Res,
        $Val extends AccountRegisterGroupModel>
    implements $AccountRegisterGroupModelCopyWith<$Res> {
  _$AccountRegisterGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? register = freezed,
  }) {
    return _then(_value.copyWith(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      register: freezed == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as AccountRegisterModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountRegisterModelCopyWith<$Res>? get register {
    if (_value.register == null) {
      return null;
    }

    return $AccountRegisterModelCopyWith<$Res>(_value.register!, (value) {
      return _then(_value.copyWith(register: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountRegisterGroupModelImplCopyWith<$Res>
    implements $AccountRegisterGroupModelCopyWith<$Res> {
  factory _$$AccountRegisterGroupModelImplCopyWith(
          _$AccountRegisterGroupModelImpl value,
          $Res Function(_$AccountRegisterGroupModelImpl) then) =
      __$$AccountRegisterGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? group, AccountRegisterModel? register});

  @override
  $AccountRegisterModelCopyWith<$Res>? get register;
}

/// @nodoc
class __$$AccountRegisterGroupModelImplCopyWithImpl<$Res>
    extends _$AccountRegisterGroupModelCopyWithImpl<$Res,
        _$AccountRegisterGroupModelImpl>
    implements _$$AccountRegisterGroupModelImplCopyWith<$Res> {
  __$$AccountRegisterGroupModelImplCopyWithImpl(
      _$AccountRegisterGroupModelImpl _value,
      $Res Function(_$AccountRegisterGroupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? register = freezed,
  }) {
    return _then(_$AccountRegisterGroupModelImpl(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      register: freezed == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as AccountRegisterModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountRegisterGroupModelImpl implements _AccountRegisterGroupModel {
  _$AccountRegisterGroupModelImpl({this.group, this.register});

  factory _$AccountRegisterGroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountRegisterGroupModelImplFromJson(json);

  @override
  final String? group;
  @override
  final AccountRegisterModel? register;

  @override
  String toString() {
    return 'AccountRegisterGroupModel(group: $group, register: $register)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterGroupModelImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.register, register) ||
                other.register == register));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, group, register);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegisterGroupModelImplCopyWith<_$AccountRegisterGroupModelImpl>
      get copyWith => __$$AccountRegisterGroupModelImplCopyWithImpl<
          _$AccountRegisterGroupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountRegisterGroupModelImplToJson(
      this,
    );
  }
}

abstract class _AccountRegisterGroupModel implements AccountRegisterGroupModel {
  factory _AccountRegisterGroupModel(
      {final String? group,
      final AccountRegisterModel? register}) = _$AccountRegisterGroupModelImpl;

  factory _AccountRegisterGroupModel.fromJson(Map<String, dynamic> json) =
      _$AccountRegisterGroupModelImpl.fromJson;

  @override
  String? get group;
  @override
  AccountRegisterModel? get register;
  @override
  @JsonKey(ignore: true)
  _$$AccountRegisterGroupModelImplCopyWith<_$AccountRegisterGroupModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountRegisterGroup {
  AccountRegisterGroupModel get register => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountRegisterGroupModel register) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterGroupModel register)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountRegisterGroupModel register)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegisterGroupData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterGroupData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterGroupData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountRegisterGroupCopyWith<AccountRegisterGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegisterGroupCopyWith<$Res> {
  factory $AccountRegisterGroupCopyWith(AccountRegisterGroup value,
          $Res Function(AccountRegisterGroup) then) =
      _$AccountRegisterGroupCopyWithImpl<$Res, AccountRegisterGroup>;
  @useResult
  $Res call({AccountRegisterGroupModel register});

  $AccountRegisterGroupModelCopyWith<$Res> get register;
}

/// @nodoc
class _$AccountRegisterGroupCopyWithImpl<$Res,
        $Val extends AccountRegisterGroup>
    implements $AccountRegisterGroupCopyWith<$Res> {
  _$AccountRegisterGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = null,
  }) {
    return _then(_value.copyWith(
      register: null == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as AccountRegisterGroupModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountRegisterGroupModelCopyWith<$Res> get register {
    return $AccountRegisterGroupModelCopyWith<$Res>(_value.register, (value) {
      return _then(_value.copyWith(register: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountRegisterGroupDataImplCopyWith<$Res>
    implements $AccountRegisterGroupCopyWith<$Res> {
  factory _$$AccountRegisterGroupDataImplCopyWith(
          _$AccountRegisterGroupDataImpl value,
          $Res Function(_$AccountRegisterGroupDataImpl) then) =
      __$$AccountRegisterGroupDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountRegisterGroupModel register});

  @override
  $AccountRegisterGroupModelCopyWith<$Res> get register;
}

/// @nodoc
class __$$AccountRegisterGroupDataImplCopyWithImpl<$Res>
    extends _$AccountRegisterGroupCopyWithImpl<$Res,
        _$AccountRegisterGroupDataImpl>
    implements _$$AccountRegisterGroupDataImplCopyWith<$Res> {
  __$$AccountRegisterGroupDataImplCopyWithImpl(
      _$AccountRegisterGroupDataImpl _value,
      $Res Function(_$AccountRegisterGroupDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = null,
  }) {
    return _then(_$AccountRegisterGroupDataImpl(
      null == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as AccountRegisterGroupModel,
    ));
  }
}

/// @nodoc

class _$AccountRegisterGroupDataImpl implements AccountRegisterGroupData {
  _$AccountRegisterGroupDataImpl(this.register);

  @override
  final AccountRegisterGroupModel register;

  @override
  String toString() {
    return 'AccountRegisterGroup.data(register: $register)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegisterGroupDataImpl &&
            (identical(other.register, register) ||
                other.register == register));
  }

  @override
  int get hashCode => Object.hash(runtimeType, register);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegisterGroupDataImplCopyWith<_$AccountRegisterGroupDataImpl>
      get copyWith => __$$AccountRegisterGroupDataImplCopyWithImpl<
          _$AccountRegisterGroupDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountRegisterGroupModel register) data,
  }) {
    return data(register);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterGroupModel register)? data,
  }) {
    return data?.call(register);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountRegisterGroupModel register)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(register);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegisterGroupData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegisterGroupData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegisterGroupData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AccountRegisterGroupData implements AccountRegisterGroup {
  factory AccountRegisterGroupData(final AccountRegisterGroupModel register) =
      _$AccountRegisterGroupDataImpl;

  @override
  AccountRegisterGroupModel get register;
  @override
  @JsonKey(ignore: true)
  _$$AccountRegisterGroupDataImplCopyWith<_$AccountRegisterGroupDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
