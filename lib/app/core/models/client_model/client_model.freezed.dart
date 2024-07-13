// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) {
  return _ClientModel.fromJson(json);
}

/// @nodoc
mixin _$ClientModel {
  String? get id => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get neighborhood => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientModelCopyWith<ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientModelCopyWith<$Res> {
  factory $ClientModelCopyWith(
          ClientModel value, $Res Function(ClientModel) then) =
      _$ClientModelCopyWithImpl<$Res, ClientModel>;
  @useResult
  $Res call(
      {String? id,
      String? address,
      String? neighborhood,
      String? name,
      String? phone,
      int? number});
}

/// @nodoc
class _$ClientModelCopyWithImpl<$Res, $Val extends ClientModel>
    implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? neighborhood = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientModelImplCopyWith<$Res>
    implements $ClientModelCopyWith<$Res> {
  factory _$$ClientModelImplCopyWith(
          _$ClientModelImpl value, $Res Function(_$ClientModelImpl) then) =
      __$$ClientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? address,
      String? neighborhood,
      String? name,
      String? phone,
      int? number});
}

/// @nodoc
class __$$ClientModelImplCopyWithImpl<$Res>
    extends _$ClientModelCopyWithImpl<$Res, _$ClientModelImpl>
    implements _$$ClientModelImplCopyWith<$Res> {
  __$$ClientModelImplCopyWithImpl(
      _$ClientModelImpl _value, $Res Function(_$ClientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? neighborhood = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? number = freezed,
  }) {
    return _then(_$ClientModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ClientModelImpl with DiagnosticableTreeMixin implements _ClientModel {
  _$ClientModelImpl(
      {this.id,
      this.address,
      this.neighborhood,
      this.name,
      this.phone,
      this.number});

  factory _$ClientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? address;
  @override
  final String? neighborhood;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final int? number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientModel(id: $id, address: $address, neighborhood: $neighborhood, name: $name, phone: $phone, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('neighborhood', neighborhood))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, address, neighborhood, name, phone, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientModelImplCopyWith<_$ClientModelImpl> get copyWith =>
      __$$ClientModelImplCopyWithImpl<_$ClientModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientModelImplToJson(
      this,
    );
  }
}

abstract class _ClientModel implements ClientModel {
  factory _ClientModel(
      {final String? id,
      final String? address,
      final String? neighborhood,
      final String? name,
      final String? phone,
      final int? number}) = _$ClientModelImpl;

  factory _ClientModel.fromJson(Map<String, dynamic> json) =
      _$ClientModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get address;
  @override
  String? get neighborhood;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  int? get number;
  @override
  @JsonKey(ignore: true)
  _$$ClientModelImplCopyWith<_$ClientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Client {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClientModel> client) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ClientModel> client)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClientModel> client)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientData value) data,
    required TResult Function(ClientEmpty value) empty,
    required TResult Function(ClientNone value) none,
    required TResult Function(ClientError value) error,
    required TResult Function(ClientLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientData value)? data,
    TResult? Function(ClientEmpty value)? empty,
    TResult? Function(ClientNone value)? none,
    TResult? Function(ClientError value)? error,
    TResult? Function(ClientLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientData value)? data,
    TResult Function(ClientEmpty value)? empty,
    TResult Function(ClientNone value)? none,
    TResult Function(ClientError value)? error,
    TResult Function(ClientLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientDataImplCopyWith<$Res> {
  factory _$$ClientDataImplCopyWith(
          _$ClientDataImpl value, $Res Function(_$ClientDataImpl) then) =
      __$$ClientDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClientModel> client});
}

/// @nodoc
class __$$ClientDataImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientDataImpl>
    implements _$$ClientDataImplCopyWith<$Res> {
  __$$ClientDataImplCopyWithImpl(
      _$ClientDataImpl _value, $Res Function(_$ClientDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$ClientDataImpl(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as List<ClientModel>,
    ));
  }
}

/// @nodoc

class _$ClientDataImpl with DiagnosticableTreeMixin implements ClientData {
  const _$ClientDataImpl(this.client);

  @override
  final List<ClientModel> client;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Client.data(client: $client)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Client.data'))
      ..add(DiagnosticsProperty('client', client));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientDataImpl &&
            const DeepCollectionEquality().equals(other.client, client));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(client));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientDataImplCopyWith<_$ClientDataImpl> get copyWith =>
      __$$ClientDataImplCopyWithImpl<_$ClientDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClientModel> client) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
  }) {
    return data(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ClientModel> client)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
  }) {
    return data?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClientModel> client)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientData value) data,
    required TResult Function(ClientEmpty value) empty,
    required TResult Function(ClientNone value) none,
    required TResult Function(ClientError value) error,
    required TResult Function(ClientLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientData value)? data,
    TResult? Function(ClientEmpty value)? empty,
    TResult? Function(ClientNone value)? none,
    TResult? Function(ClientError value)? error,
    TResult? Function(ClientLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientData value)? data,
    TResult Function(ClientEmpty value)? empty,
    TResult Function(ClientNone value)? none,
    TResult Function(ClientError value)? error,
    TResult Function(ClientLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ClientData implements Client {
  const factory ClientData(final List<ClientModel> client) = _$ClientDataImpl;

  List<ClientModel> get client;
  @JsonKey(ignore: true)
  _$$ClientDataImplCopyWith<_$ClientDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEmptyImplCopyWith<$Res> {
  factory _$$ClientEmptyImplCopyWith(
          _$ClientEmptyImpl value, $Res Function(_$ClientEmptyImpl) then) =
      __$$ClientEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientEmptyImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientEmptyImpl>
    implements _$$ClientEmptyImplCopyWith<$Res> {
  __$$ClientEmptyImplCopyWithImpl(
      _$ClientEmptyImpl _value, $Res Function(_$ClientEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientEmptyImpl with DiagnosticableTreeMixin implements ClientEmpty {
  const _$ClientEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Client.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Client.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClientModel> client) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ClientModel> client)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClientModel> client)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
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
    required TResult Function(ClientData value) data,
    required TResult Function(ClientEmpty value) empty,
    required TResult Function(ClientNone value) none,
    required TResult Function(ClientError value) error,
    required TResult Function(ClientLoading value) loading,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientData value)? data,
    TResult? Function(ClientEmpty value)? empty,
    TResult? Function(ClientNone value)? none,
    TResult? Function(ClientError value)? error,
    TResult? Function(ClientLoading value)? loading,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientData value)? data,
    TResult Function(ClientEmpty value)? empty,
    TResult Function(ClientNone value)? none,
    TResult Function(ClientError value)? error,
    TResult Function(ClientLoading value)? loading,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ClientEmpty implements Client {
  const factory ClientEmpty() = _$ClientEmptyImpl;
}

/// @nodoc
abstract class _$$ClientNoneImplCopyWith<$Res> {
  factory _$$ClientNoneImplCopyWith(
          _$ClientNoneImpl value, $Res Function(_$ClientNoneImpl) then) =
      __$$ClientNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientNoneImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientNoneImpl>
    implements _$$ClientNoneImplCopyWith<$Res> {
  __$$ClientNoneImplCopyWithImpl(
      _$ClientNoneImpl _value, $Res Function(_$ClientNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientNoneImpl with DiagnosticableTreeMixin implements ClientNone {
  const _$ClientNoneImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Client.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Client.none'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClientModel> client) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ClientModel> client)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClientModel> client)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
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
    required TResult Function(ClientData value) data,
    required TResult Function(ClientEmpty value) empty,
    required TResult Function(ClientNone value) none,
    required TResult Function(ClientError value) error,
    required TResult Function(ClientLoading value) loading,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientData value)? data,
    TResult? Function(ClientEmpty value)? empty,
    TResult? Function(ClientNone value)? none,
    TResult? Function(ClientError value)? error,
    TResult? Function(ClientLoading value)? loading,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientData value)? data,
    TResult Function(ClientEmpty value)? empty,
    TResult Function(ClientNone value)? none,
    TResult Function(ClientError value)? error,
    TResult Function(ClientLoading value)? loading,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class ClientNone implements Client {
  const factory ClientNone() = _$ClientNoneImpl;
}

/// @nodoc
abstract class _$$ClientErrorImplCopyWith<$Res> {
  factory _$$ClientErrorImplCopyWith(
          _$ClientErrorImpl value, $Res Function(_$ClientErrorImpl) then) =
      __$$ClientErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$ClientErrorImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientErrorImpl>
    implements _$$ClientErrorImplCopyWith<$Res> {
  __$$ClientErrorImplCopyWithImpl(
      _$ClientErrorImpl _value, $Res Function(_$ClientErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ClientErrorImpl(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ClientErrorImpl with DiagnosticableTreeMixin implements ClientError {
  const _$ClientErrorImpl([this.error]);

  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Client.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Client.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientErrorImplCopyWith<_$ClientErrorImpl> get copyWith =>
      __$$ClientErrorImplCopyWithImpl<_$ClientErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClientModel> client) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ClientModel> client)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClientModel> client)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
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
    required TResult Function(ClientData value) data,
    required TResult Function(ClientEmpty value) empty,
    required TResult Function(ClientNone value) none,
    required TResult Function(ClientError value) error,
    required TResult Function(ClientLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientData value)? data,
    TResult? Function(ClientEmpty value)? empty,
    TResult? Function(ClientNone value)? none,
    TResult? Function(ClientError value)? error,
    TResult? Function(ClientLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientData value)? data,
    TResult Function(ClientEmpty value)? empty,
    TResult Function(ClientNone value)? none,
    TResult Function(ClientError value)? error,
    TResult Function(ClientLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ClientError implements Client {
  const factory ClientError([final Object? error]) = _$ClientErrorImpl;

  Object? get error;
  @JsonKey(ignore: true)
  _$$ClientErrorImplCopyWith<_$ClientErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientLoadingImplCopyWith<$Res> {
  factory _$$ClientLoadingImplCopyWith(
          _$ClientLoadingImpl value, $Res Function(_$ClientLoadingImpl) then) =
      __$$ClientLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientLoadingImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientLoadingImpl>
    implements _$$ClientLoadingImplCopyWith<$Res> {
  __$$ClientLoadingImplCopyWithImpl(
      _$ClientLoadingImpl _value, $Res Function(_$ClientLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientLoadingImpl
    with DiagnosticableTreeMixin
    implements ClientLoading {
  const _$ClientLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Client.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Client.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClientModel> client) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function(Object? error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ClientModel> client)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function(Object? error)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClientModel> client)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function(Object? error)? error,
    TResult Function()? loading,
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
    required TResult Function(ClientData value) data,
    required TResult Function(ClientEmpty value) empty,
    required TResult Function(ClientNone value) none,
    required TResult Function(ClientError value) error,
    required TResult Function(ClientLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientData value)? data,
    TResult? Function(ClientEmpty value)? empty,
    TResult? Function(ClientNone value)? none,
    TResult? Function(ClientError value)? error,
    TResult? Function(ClientLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientData value)? data,
    TResult Function(ClientEmpty value)? empty,
    TResult Function(ClientNone value)? none,
    TResult Function(ClientError value)? error,
    TResult Function(ClientLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClientLoading implements Client {
  const factory ClientLoading() = _$ClientLoadingImpl;
}
