// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountAlertModel _$AccountAlertModelFromJson(Map<String, dynamic> json) {
  return _AccountAlertModel.fromJson(json);
}

/// @nodoc
mixin _$AccountAlertModel {
  bool? get isrecurrent => throw _privateConstructorUsedError;
  String? get account => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseToDateTime)
  DateTime? get due => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get isPaid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountAlertModelCopyWith<AccountAlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountAlertModelCopyWith<$Res> {
  factory $AccountAlertModelCopyWith(
          AccountAlertModel value, $Res Function(AccountAlertModel) then) =
      _$AccountAlertModelCopyWithImpl<$Res, AccountAlertModel>;
  @useResult
  $Res call(
      {bool? isrecurrent,
      String? account,
      @JsonKey(fromJson: _parseToDateTime) DateTime? due,
      double? value,
      bool? isActive,
      bool? isPaid});
}

/// @nodoc
class _$AccountAlertModelCopyWithImpl<$Res, $Val extends AccountAlertModel>
    implements $AccountAlertModelCopyWith<$Res> {
  _$AccountAlertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrecurrent = freezed,
    Object? account = freezed,
    Object? due = freezed,
    Object? value = freezed,
    Object? isActive = freezed,
    Object? isPaid = freezed,
  }) {
    return _then(_value.copyWith(
      isrecurrent: freezed == isrecurrent
          ? _value.isrecurrent
          : isrecurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountAlertModelCopyWith<$Res>
    implements $AccountAlertModelCopyWith<$Res> {
  factory _$$_AccountAlertModelCopyWith(_$_AccountAlertModel value,
          $Res Function(_$_AccountAlertModel) then) =
      __$$_AccountAlertModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isrecurrent,
      String? account,
      @JsonKey(fromJson: _parseToDateTime) DateTime? due,
      double? value,
      bool? isActive,
      bool? isPaid});
}

/// @nodoc
class __$$_AccountAlertModelCopyWithImpl<$Res>
    extends _$AccountAlertModelCopyWithImpl<$Res, _$_AccountAlertModel>
    implements _$$_AccountAlertModelCopyWith<$Res> {
  __$$_AccountAlertModelCopyWithImpl(
      _$_AccountAlertModel _value, $Res Function(_$_AccountAlertModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrecurrent = freezed,
    Object? account = freezed,
    Object? due = freezed,
    Object? value = freezed,
    Object? isActive = freezed,
    Object? isPaid = freezed,
  }) {
    return _then(_$_AccountAlertModel(
      freezed == isrecurrent
          ? _value.isrecurrent
          : isrecurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_AccountAlertModel
    with DiagnosticableTreeMixin
    implements _AccountAlertModel {
  _$_AccountAlertModel(
      this.isrecurrent,
      this.account,
      @JsonKey(fromJson: _parseToDateTime) this.due,
      this.value,
      this.isActive,
      this.isPaid);

  factory _$_AccountAlertModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountAlertModelFromJson(json);

  @override
  final bool? isrecurrent;
  @override
  final String? account;
  @override
  @JsonKey(fromJson: _parseToDateTime)
  final DateTime? due;
  @override
  final double? value;
  @override
  final bool? isActive;
  @override
  final bool? isPaid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountAlertModel(isrecurrent: $isrecurrent, account: $account, due: $due, value: $value, isActive: $isActive, isPaid: $isPaid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountAlertModel'))
      ..add(DiagnosticsProperty('isrecurrent', isrecurrent))
      ..add(DiagnosticsProperty('account', account))
      ..add(DiagnosticsProperty('due', due))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('isPaid', isPaid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountAlertModel &&
            (identical(other.isrecurrent, isrecurrent) ||
                other.isrecurrent == isrecurrent) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isrecurrent, account, due, value, isActive, isPaid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountAlertModelCopyWith<_$_AccountAlertModel> get copyWith =>
      __$$_AccountAlertModelCopyWithImpl<_$_AccountAlertModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountAlertModelToJson(
      this,
    );
  }
}

abstract class _AccountAlertModel implements AccountAlertModel {
  factory _AccountAlertModel(
      final bool? isrecurrent,
      final String? account,
      @JsonKey(fromJson: _parseToDateTime) final DateTime? due,
      final double? value,
      final bool? isActive,
      final bool? isPaid) = _$_AccountAlertModel;

  factory _AccountAlertModel.fromJson(Map<String, dynamic> json) =
      _$_AccountAlertModel.fromJson;

  @override
  bool? get isrecurrent;
  @override
  String? get account;
  @override
  @JsonKey(fromJson: _parseToDateTime)
  DateTime? get due;
  @override
  double? get value;
  @override
  bool? get isActive;
  @override
  bool? get isPaid;
  @override
  @JsonKey(ignore: true)
  _$$_AccountAlertModelCopyWith<_$_AccountAlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountAlert {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountAlertModel> accountAlertModel) data,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountAlertData value) data,
    required TResult Function(AccountAlertError value) error,
    required TResult Function(AccountAlertLoading value) loading,
    required TResult Function(AccountAlertNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAlertData value)? data,
    TResult? Function(AccountAlertError value)? error,
    TResult? Function(AccountAlertLoading value)? loading,
    TResult? Function(AccountAlertNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAlertData value)? data,
    TResult Function(AccountAlertError value)? error,
    TResult Function(AccountAlertLoading value)? loading,
    TResult Function(AccountAlertNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountAlertCopyWith<$Res> {
  factory $AccountAlertCopyWith(
          AccountAlert value, $Res Function(AccountAlert) then) =
      _$AccountAlertCopyWithImpl<$Res, AccountAlert>;
}

/// @nodoc
class _$AccountAlertCopyWithImpl<$Res, $Val extends AccountAlert>
    implements $AccountAlertCopyWith<$Res> {
  _$AccountAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountAlertDataCopyWith<$Res> {
  factory _$$AccountAlertDataCopyWith(
          _$AccountAlertData value, $Res Function(_$AccountAlertData) then) =
      __$$AccountAlertDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AccountAlertModel> accountAlertModel});
}

/// @nodoc
class __$$AccountAlertDataCopyWithImpl<$Res>
    extends _$AccountAlertCopyWithImpl<$Res, _$AccountAlertData>
    implements _$$AccountAlertDataCopyWith<$Res> {
  __$$AccountAlertDataCopyWithImpl(
      _$AccountAlertData _value, $Res Function(_$AccountAlertData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountAlertModel = null,
  }) {
    return _then(_$AccountAlertData(
      null == accountAlertModel
          ? _value.accountAlertModel
          : accountAlertModel // ignore: cast_nullable_to_non_nullable
              as List<AccountAlertModel>,
    ));
  }
}

/// @nodoc

class _$AccountAlertData
    with DiagnosticableTreeMixin
    implements AccountAlertData {
  _$AccountAlertData(this.accountAlertModel);

  @override
  final List<AccountAlertModel> accountAlertModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountAlert.data(accountAlertModel: $accountAlertModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountAlert.data'))
      ..add(DiagnosticsProperty('accountAlertModel', accountAlertModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountAlertData &&
            const DeepCollectionEquality()
                .equals(other.accountAlertModel, accountAlertModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accountAlertModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountAlertDataCopyWith<_$AccountAlertData> get copyWith =>
      __$$AccountAlertDataCopyWithImpl<_$AccountAlertData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountAlertModel> accountAlertModel) data,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
    required TResult Function() none,
  }) {
    return data(accountAlertModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
    TResult? Function()? none,
  }) {
    return data?.call(accountAlertModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(accountAlertModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountAlertData value) data,
    required TResult Function(AccountAlertError value) error,
    required TResult Function(AccountAlertLoading value) loading,
    required TResult Function(AccountAlertNone value) none,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAlertData value)? data,
    TResult? Function(AccountAlertError value)? error,
    TResult? Function(AccountAlertLoading value)? loading,
    TResult? Function(AccountAlertNone value)? none,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAlertData value)? data,
    TResult Function(AccountAlertError value)? error,
    TResult Function(AccountAlertLoading value)? loading,
    TResult Function(AccountAlertNone value)? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AccountAlertData implements AccountAlert {
  factory AccountAlertData(final List<AccountAlertModel> accountAlertModel) =
      _$AccountAlertData;

  List<AccountAlertModel> get accountAlertModel;
  @JsonKey(ignore: true)
  _$$AccountAlertDataCopyWith<_$AccountAlertData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountAlertErrorCopyWith<$Res> {
  factory _$$AccountAlertErrorCopyWith(
          _$AccountAlertError value, $Res Function(_$AccountAlertError) then) =
      __$$AccountAlertErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$AccountAlertErrorCopyWithImpl<$Res>
    extends _$AccountAlertCopyWithImpl<$Res, _$AccountAlertError>
    implements _$$AccountAlertErrorCopyWith<$Res> {
  __$$AccountAlertErrorCopyWithImpl(
      _$AccountAlertError _value, $Res Function(_$AccountAlertError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AccountAlertError(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$AccountAlertError
    with DiagnosticableTreeMixin
    implements AccountAlertError {
  _$AccountAlertError([this.error]);

  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountAlert.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountAlert.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountAlertError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountAlertErrorCopyWith<_$AccountAlertError> get copyWith =>
      __$$AccountAlertErrorCopyWithImpl<_$AccountAlertError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountAlertModel> accountAlertModel) data,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
    required TResult Function() none,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
    TResult? Function()? none,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
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
    required TResult Function(AccountAlertData value) data,
    required TResult Function(AccountAlertError value) error,
    required TResult Function(AccountAlertLoading value) loading,
    required TResult Function(AccountAlertNone value) none,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAlertData value)? data,
    TResult? Function(AccountAlertError value)? error,
    TResult? Function(AccountAlertLoading value)? loading,
    TResult? Function(AccountAlertNone value)? none,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAlertData value)? data,
    TResult Function(AccountAlertError value)? error,
    TResult Function(AccountAlertLoading value)? loading,
    TResult Function(AccountAlertNone value)? none,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AccountAlertError implements AccountAlert {
  factory AccountAlertError([final Object? error]) = _$AccountAlertError;

  Object? get error;
  @JsonKey(ignore: true)
  _$$AccountAlertErrorCopyWith<_$AccountAlertError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountAlertLoadingCopyWith<$Res> {
  factory _$$AccountAlertLoadingCopyWith(_$AccountAlertLoading value,
          $Res Function(_$AccountAlertLoading) then) =
      __$$AccountAlertLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountAlertLoadingCopyWithImpl<$Res>
    extends _$AccountAlertCopyWithImpl<$Res, _$AccountAlertLoading>
    implements _$$AccountAlertLoadingCopyWith<$Res> {
  __$$AccountAlertLoadingCopyWithImpl(
      _$AccountAlertLoading _value, $Res Function(_$AccountAlertLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountAlertLoading
    with DiagnosticableTreeMixin
    implements AccountAlertLoading {
  _$AccountAlertLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountAlert.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountAlert.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountAlertLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountAlertModel> accountAlertModel) data,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
    required TResult Function() none,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
    TResult? Function()? none,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
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
    required TResult Function(AccountAlertData value) data,
    required TResult Function(AccountAlertError value) error,
    required TResult Function(AccountAlertLoading value) loading,
    required TResult Function(AccountAlertNone value) none,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAlertData value)? data,
    TResult? Function(AccountAlertError value)? error,
    TResult? Function(AccountAlertLoading value)? loading,
    TResult? Function(AccountAlertNone value)? none,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAlertData value)? data,
    TResult Function(AccountAlertError value)? error,
    TResult Function(AccountAlertLoading value)? loading,
    TResult Function(AccountAlertNone value)? none,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountAlertLoading implements AccountAlert {
  factory AccountAlertLoading() = _$AccountAlertLoading;
}

/// @nodoc
abstract class _$$AccountAlertNoneCopyWith<$Res> {
  factory _$$AccountAlertNoneCopyWith(
          _$AccountAlertNone value, $Res Function(_$AccountAlertNone) then) =
      __$$AccountAlertNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountAlertNoneCopyWithImpl<$Res>
    extends _$AccountAlertCopyWithImpl<$Res, _$AccountAlertNone>
    implements _$$AccountAlertNoneCopyWith<$Res> {
  __$$AccountAlertNoneCopyWithImpl(
      _$AccountAlertNone _value, $Res Function(_$AccountAlertNone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountAlertNone
    with DiagnosticableTreeMixin
    implements AccountAlertNone {
  _$AccountAlertNone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountAlert.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountAlert.none'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountAlertNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AccountAlertModel> accountAlertModel) data,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AccountAlertModel> accountAlertModel)? data,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
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
    required TResult Function(AccountAlertData value) data,
    required TResult Function(AccountAlertError value) error,
    required TResult Function(AccountAlertLoading value) loading,
    required TResult Function(AccountAlertNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAlertData value)? data,
    TResult? Function(AccountAlertError value)? error,
    TResult? Function(AccountAlertLoading value)? loading,
    TResult? Function(AccountAlertNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAlertData value)? data,
    TResult Function(AccountAlertError value)? error,
    TResult Function(AccountAlertLoading value)? loading,
    TResult Function(AccountAlertNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class AccountAlertNone implements AccountAlert {
  factory AccountAlertNone() = _$AccountAlertNone;
}
