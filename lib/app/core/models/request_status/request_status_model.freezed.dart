// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() none,
    required TResult Function(Object? e) error,
    required TResult Function(Object? data) successWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? none,
    TResult? Function(Object? e)? error,
    TResult? Function(Object? data)? successWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? none,
    TResult Function(Object? e)? error,
    TResult Function(Object? data)? successWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStatusSuccess value) success,
    required TResult Function(RequestStatusLoading value) loading,
    required TResult Function(RequestStatusNone value) none,
    required TResult Function(RequestStatusError value) error,
    required TResult Function(RequestStatusSuccessWithData value)
        successWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestStatusSuccess value)? success,
    TResult? Function(RequestStatusLoading value)? loading,
    TResult? Function(RequestStatusNone value)? none,
    TResult? Function(RequestStatusError value)? error,
    TResult? Function(RequestStatusSuccessWithData value)? successWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStatusSuccess value)? success,
    TResult Function(RequestStatusLoading value)? loading,
    TResult Function(RequestStatusNone value)? none,
    TResult Function(RequestStatusError value)? error,
    TResult Function(RequestStatusSuccessWithData value)? successWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStatusCopyWith<$Res> {
  factory $RequestStatusCopyWith(
          RequestStatus value, $Res Function(RequestStatus) then) =
      _$RequestStatusCopyWithImpl<$Res, RequestStatus>;
}

/// @nodoc
class _$RequestStatusCopyWithImpl<$Res, $Val extends RequestStatus>
    implements $RequestStatusCopyWith<$Res> {
  _$RequestStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestStatusSuccessImplCopyWith<$Res> {
  factory _$$RequestStatusSuccessImplCopyWith(_$RequestStatusSuccessImpl value,
          $Res Function(_$RequestStatusSuccessImpl) then) =
      __$$RequestStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStatusSuccessImplCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusSuccessImpl>
    implements _$$RequestStatusSuccessImplCopyWith<$Res> {
  __$$RequestStatusSuccessImplCopyWithImpl(_$RequestStatusSuccessImpl _value,
      $Res Function(_$RequestStatusSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStatusSuccessImpl implements RequestStatusSuccess {
  const _$RequestStatusSuccessImpl();

  @override
  String toString() {
    return 'RequestStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() none,
    required TResult Function(Object? e) error,
    required TResult Function(Object? data) successWithData,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? none,
    TResult? Function(Object? e)? error,
    TResult? Function(Object? data)? successWithData,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? none,
    TResult Function(Object? e)? error,
    TResult Function(Object? data)? successWithData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStatusSuccess value) success,
    required TResult Function(RequestStatusLoading value) loading,
    required TResult Function(RequestStatusNone value) none,
    required TResult Function(RequestStatusError value) error,
    required TResult Function(RequestStatusSuccessWithData value)
        successWithData,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestStatusSuccess value)? success,
    TResult? Function(RequestStatusLoading value)? loading,
    TResult? Function(RequestStatusNone value)? none,
    TResult? Function(RequestStatusError value)? error,
    TResult? Function(RequestStatusSuccessWithData value)? successWithData,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStatusSuccess value)? success,
    TResult Function(RequestStatusLoading value)? loading,
    TResult Function(RequestStatusNone value)? none,
    TResult Function(RequestStatusError value)? error,
    TResult Function(RequestStatusSuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RequestStatusSuccess implements RequestStatus {
  const factory RequestStatusSuccess() = _$RequestStatusSuccessImpl;
}

/// @nodoc
abstract class _$$RequestStatusLoadingImplCopyWith<$Res> {
  factory _$$RequestStatusLoadingImplCopyWith(_$RequestStatusLoadingImpl value,
          $Res Function(_$RequestStatusLoadingImpl) then) =
      __$$RequestStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStatusLoadingImplCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusLoadingImpl>
    implements _$$RequestStatusLoadingImplCopyWith<$Res> {
  __$$RequestStatusLoadingImplCopyWithImpl(_$RequestStatusLoadingImpl _value,
      $Res Function(_$RequestStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStatusLoadingImpl implements RequestStatusLoading {
  const _$RequestStatusLoadingImpl();

  @override
  String toString() {
    return 'RequestStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() none,
    required TResult Function(Object? e) error,
    required TResult Function(Object? data) successWithData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? none,
    TResult? Function(Object? e)? error,
    TResult? Function(Object? data)? successWithData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? none,
    TResult Function(Object? e)? error,
    TResult Function(Object? data)? successWithData,
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
    required TResult Function(RequestStatusSuccess value) success,
    required TResult Function(RequestStatusLoading value) loading,
    required TResult Function(RequestStatusNone value) none,
    required TResult Function(RequestStatusError value) error,
    required TResult Function(RequestStatusSuccessWithData value)
        successWithData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestStatusSuccess value)? success,
    TResult? Function(RequestStatusLoading value)? loading,
    TResult? Function(RequestStatusNone value)? none,
    TResult? Function(RequestStatusError value)? error,
    TResult? Function(RequestStatusSuccessWithData value)? successWithData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStatusSuccess value)? success,
    TResult Function(RequestStatusLoading value)? loading,
    TResult Function(RequestStatusNone value)? none,
    TResult Function(RequestStatusError value)? error,
    TResult Function(RequestStatusSuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RequestStatusLoading implements RequestStatus {
  const factory RequestStatusLoading() = _$RequestStatusLoadingImpl;
}

/// @nodoc
abstract class _$$RequestStatusNoneImplCopyWith<$Res> {
  factory _$$RequestStatusNoneImplCopyWith(_$RequestStatusNoneImpl value,
          $Res Function(_$RequestStatusNoneImpl) then) =
      __$$RequestStatusNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStatusNoneImplCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusNoneImpl>
    implements _$$RequestStatusNoneImplCopyWith<$Res> {
  __$$RequestStatusNoneImplCopyWithImpl(_$RequestStatusNoneImpl _value,
      $Res Function(_$RequestStatusNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStatusNoneImpl implements RequestStatusNone {
  const _$RequestStatusNoneImpl();

  @override
  String toString() {
    return 'RequestStatus.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestStatusNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() none,
    required TResult Function(Object? e) error,
    required TResult Function(Object? data) successWithData,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? none,
    TResult? Function(Object? e)? error,
    TResult? Function(Object? data)? successWithData,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? none,
    TResult Function(Object? e)? error,
    TResult Function(Object? data)? successWithData,
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
    required TResult Function(RequestStatusSuccess value) success,
    required TResult Function(RequestStatusLoading value) loading,
    required TResult Function(RequestStatusNone value) none,
    required TResult Function(RequestStatusError value) error,
    required TResult Function(RequestStatusSuccessWithData value)
        successWithData,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestStatusSuccess value)? success,
    TResult? Function(RequestStatusLoading value)? loading,
    TResult? Function(RequestStatusNone value)? none,
    TResult? Function(RequestStatusError value)? error,
    TResult? Function(RequestStatusSuccessWithData value)? successWithData,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStatusSuccess value)? success,
    TResult Function(RequestStatusLoading value)? loading,
    TResult Function(RequestStatusNone value)? none,
    TResult Function(RequestStatusError value)? error,
    TResult Function(RequestStatusSuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class RequestStatusNone implements RequestStatus {
  const factory RequestStatusNone() = _$RequestStatusNoneImpl;
}

/// @nodoc
abstract class _$$RequestStatusErrorImplCopyWith<$Res> {
  factory _$$RequestStatusErrorImplCopyWith(_$RequestStatusErrorImpl value,
          $Res Function(_$RequestStatusErrorImpl) then) =
      __$$RequestStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? e});
}

/// @nodoc
class __$$RequestStatusErrorImplCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusErrorImpl>
    implements _$$RequestStatusErrorImplCopyWith<$Res> {
  __$$RequestStatusErrorImplCopyWithImpl(_$RequestStatusErrorImpl _value,
      $Res Function(_$RequestStatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$RequestStatusErrorImpl(
      freezed == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$RequestStatusErrorImpl implements RequestStatusError {
  const _$RequestStatusErrorImpl([this.e]);

  @override
  final Object? e;

  @override
  String toString() {
    return 'RequestStatus.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStatusErrorImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestStatusErrorImplCopyWith<_$RequestStatusErrorImpl> get copyWith =>
      __$$RequestStatusErrorImplCopyWithImpl<_$RequestStatusErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() none,
    required TResult Function(Object? e) error,
    required TResult Function(Object? data) successWithData,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? none,
    TResult? Function(Object? e)? error,
    TResult? Function(Object? data)? successWithData,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? none,
    TResult Function(Object? e)? error,
    TResult Function(Object? data)? successWithData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStatusSuccess value) success,
    required TResult Function(RequestStatusLoading value) loading,
    required TResult Function(RequestStatusNone value) none,
    required TResult Function(RequestStatusError value) error,
    required TResult Function(RequestStatusSuccessWithData value)
        successWithData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestStatusSuccess value)? success,
    TResult? Function(RequestStatusLoading value)? loading,
    TResult? Function(RequestStatusNone value)? none,
    TResult? Function(RequestStatusError value)? error,
    TResult? Function(RequestStatusSuccessWithData value)? successWithData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStatusSuccess value)? success,
    TResult Function(RequestStatusLoading value)? loading,
    TResult Function(RequestStatusNone value)? none,
    TResult Function(RequestStatusError value)? error,
    TResult Function(RequestStatusSuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RequestStatusError implements RequestStatus {
  const factory RequestStatusError([final Object? e]) =
      _$RequestStatusErrorImpl;

  Object? get e;
  @JsonKey(ignore: true)
  _$$RequestStatusErrorImplCopyWith<_$RequestStatusErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestStatusSuccessWithDataImplCopyWith<$Res> {
  factory _$$RequestStatusSuccessWithDataImplCopyWith(
          _$RequestStatusSuccessWithDataImpl value,
          $Res Function(_$RequestStatusSuccessWithDataImpl) then) =
      __$$RequestStatusSuccessWithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? data});
}

/// @nodoc
class __$$RequestStatusSuccessWithDataImplCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res,
        _$RequestStatusSuccessWithDataImpl>
    implements _$$RequestStatusSuccessWithDataImplCopyWith<$Res> {
  __$$RequestStatusSuccessWithDataImplCopyWithImpl(
      _$RequestStatusSuccessWithDataImpl _value,
      $Res Function(_$RequestStatusSuccessWithDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RequestStatusSuccessWithDataImpl(
      freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$RequestStatusSuccessWithDataImpl
    implements RequestStatusSuccessWithData {
  const _$RequestStatusSuccessWithDataImpl([this.data]);

  @override
  final Object? data;

  @override
  String toString() {
    return 'RequestStatus.successWithData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStatusSuccessWithDataImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestStatusSuccessWithDataImplCopyWith<
          _$RequestStatusSuccessWithDataImpl>
      get copyWith => __$$RequestStatusSuccessWithDataImplCopyWithImpl<
          _$RequestStatusSuccessWithDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() none,
    required TResult Function(Object? e) error,
    required TResult Function(Object? data) successWithData,
  }) {
    return successWithData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? none,
    TResult? Function(Object? e)? error,
    TResult? Function(Object? data)? successWithData,
  }) {
    return successWithData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? none,
    TResult Function(Object? e)? error,
    TResult Function(Object? data)? successWithData,
    required TResult orElse(),
  }) {
    if (successWithData != null) {
      return successWithData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStatusSuccess value) success,
    required TResult Function(RequestStatusLoading value) loading,
    required TResult Function(RequestStatusNone value) none,
    required TResult Function(RequestStatusError value) error,
    required TResult Function(RequestStatusSuccessWithData value)
        successWithData,
  }) {
    return successWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestStatusSuccess value)? success,
    TResult? Function(RequestStatusLoading value)? loading,
    TResult? Function(RequestStatusNone value)? none,
    TResult? Function(RequestStatusError value)? error,
    TResult? Function(RequestStatusSuccessWithData value)? successWithData,
  }) {
    return successWithData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStatusSuccess value)? success,
    TResult Function(RequestStatusLoading value)? loading,
    TResult Function(RequestStatusNone value)? none,
    TResult Function(RequestStatusError value)? error,
    TResult Function(RequestStatusSuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (successWithData != null) {
      return successWithData(this);
    }
    return orElse();
  }
}

abstract class RequestStatusSuccessWithData implements RequestStatus {
  const factory RequestStatusSuccessWithData([final Object? data]) =
      _$RequestStatusSuccessWithDataImpl;

  Object? get data;
  @JsonKey(ignore: true)
  _$$RequestStatusSuccessWithDataImplCopyWith<
          _$RequestStatusSuccessWithDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
