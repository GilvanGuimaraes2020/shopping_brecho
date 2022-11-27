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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? none,
    TResult? Function(Object? e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? none,
    TResult Function(Object? e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStatusSuccess value) success,
    required TResult Function(RequestStatusLoading value) loading,
    required TResult Function(RequestStatusNone value) none,
    required TResult Function(RequestStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestStatusSuccess value)? success,
    TResult? Function(RequestStatusLoading value)? loading,
    TResult? Function(RequestStatusNone value)? none,
    TResult? Function(RequestStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStatusSuccess value)? success,
    TResult Function(RequestStatusLoading value)? loading,
    TResult Function(RequestStatusNone value)? none,
    TResult Function(RequestStatusError value)? error,
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
  _$RequestStatusSuccess();

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
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RequestStatusSuccess implements RequestStatus {
  factory RequestStatusSuccess() = _$RequestStatusSuccess;
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
  _$RequestStatusLoading();

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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RequestStatusLoading implements RequestStatus {
  factory RequestStatusLoading() = _$RequestStatusLoading;
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
  _$RequestStatusNone();

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
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class RequestStatusNone implements RequestStatus {
  factory RequestStatusNone() = _$RequestStatusNone;
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
  _$RequestStatusError([this.e]);

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
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RequestStatusError implements RequestStatus {
  factory RequestStatusError([final Object? e]) = _$RequestStatusError;

  Object? get e;
  @JsonKey(ignore: true)
  _$$RequestStatusErrorCopyWith<_$RequestStatusError> get copyWith =>
      throw _privateConstructorUsedError;
}
