// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$RequestStatusSuccessCopyWith<$Res> {
  factory _$$RequestStatusSuccessCopyWith(_$RequestStatusSuccess value,
          $Res Function(_$RequestStatusSuccess) then) =
      __$$RequestStatusSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStatusSuccessCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusSuccess>
    implements _$$RequestStatusSuccessCopyWith<$Res> {
  __$$RequestStatusSuccessCopyWithImpl(_$RequestStatusSuccess _value,
      $Res Function(_$RequestStatusSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStatusSuccess implements RequestStatusSuccess {
  const _$RequestStatusSuccess();

  @override
  String toString() {
    return 'RequestStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestStatusSuccess);
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
  const factory RequestStatusSuccess() = _$RequestStatusSuccess;
}

/// @nodoc
abstract class _$$RequestStatusLoadingCopyWith<$Res> {
  factory _$$RequestStatusLoadingCopyWith(_$RequestStatusLoading value,
          $Res Function(_$RequestStatusLoading) then) =
      __$$RequestStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStatusLoadingCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusLoading>
    implements _$$RequestStatusLoadingCopyWith<$Res> {
  __$$RequestStatusLoadingCopyWithImpl(_$RequestStatusLoading _value,
      $Res Function(_$RequestStatusLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStatusLoading implements RequestStatusLoading {
  const _$RequestStatusLoading();

  @override
  String toString() {
    return 'RequestStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestStatusLoading);
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
  const factory RequestStatusLoading() = _$RequestStatusLoading;
}

/// @nodoc
abstract class _$$RequestStatusNoneCopyWith<$Res> {
  factory _$$RequestStatusNoneCopyWith(
          _$RequestStatusNone value, $Res Function(_$RequestStatusNone) then) =
      __$$RequestStatusNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStatusNoneCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusNone>
    implements _$$RequestStatusNoneCopyWith<$Res> {
  __$$RequestStatusNoneCopyWithImpl(
      _$RequestStatusNone _value, $Res Function(_$RequestStatusNone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStatusNone implements RequestStatusNone {
  const _$RequestStatusNone();

  @override
  String toString() {
    return 'RequestStatus.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestStatusNone);
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
  const factory RequestStatusNone() = _$RequestStatusNone;
}

/// @nodoc
abstract class _$$RequestStatusErrorCopyWith<$Res> {
  factory _$$RequestStatusErrorCopyWith(_$RequestStatusError value,
          $Res Function(_$RequestStatusError) then) =
      __$$RequestStatusErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? e});
}

/// @nodoc
class __$$RequestStatusErrorCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusError>
    implements _$$RequestStatusErrorCopyWith<$Res> {
  __$$RequestStatusErrorCopyWithImpl(
      _$RequestStatusError _value, $Res Function(_$RequestStatusError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$RequestStatusError(
      freezed == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$RequestStatusError implements RequestStatusError {
  const _$RequestStatusError([this.e]);

  @override
  final Object? e;

  @override
  String toString() {
    return 'RequestStatus.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStatusError &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestStatusErrorCopyWith<_$RequestStatusError> get copyWith =>
      __$$RequestStatusErrorCopyWithImpl<_$RequestStatusError>(
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
  const factory RequestStatusError([final Object? e]) = _$RequestStatusError;

  Object? get e;
  @JsonKey(ignore: true)
  _$$RequestStatusErrorCopyWith<_$RequestStatusError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestStatusSuccessWithDataCopyWith<$Res> {
  factory _$$RequestStatusSuccessWithDataCopyWith(
          _$RequestStatusSuccessWithData value,
          $Res Function(_$RequestStatusSuccessWithData) then) =
      __$$RequestStatusSuccessWithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? data});
}

/// @nodoc
class __$$RequestStatusSuccessWithDataCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$RequestStatusSuccessWithData>
    implements _$$RequestStatusSuccessWithDataCopyWith<$Res> {
  __$$RequestStatusSuccessWithDataCopyWithImpl(
      _$RequestStatusSuccessWithData _value,
      $Res Function(_$RequestStatusSuccessWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RequestStatusSuccessWithData(
      freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$RequestStatusSuccessWithData implements RequestStatusSuccessWithData {
  const _$RequestStatusSuccessWithData([this.data]);

  @override
  final Object? data;

  @override
  String toString() {
    return 'RequestStatus.successWithData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStatusSuccessWithData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestStatusSuccessWithDataCopyWith<_$RequestStatusSuccessWithData>
      get copyWith => __$$RequestStatusSuccessWithDataCopyWithImpl<
          _$RequestStatusSuccessWithData>(this, _$identity);

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
      _$RequestStatusSuccessWithData;

  Object? get data;
  @JsonKey(ignore: true)
  _$$RequestStatusSuccessWithDataCopyWith<_$RequestStatusSuccessWithData>
      get copyWith => throw _privateConstructorUsedError;
}
