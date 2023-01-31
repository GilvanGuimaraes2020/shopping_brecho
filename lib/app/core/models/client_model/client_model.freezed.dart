// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ClientModelCopyWith<$Res>
    implements $ClientModelCopyWith<$Res> {
  factory _$$_ClientModelCopyWith(
          _$_ClientModel value, $Res Function(_$_ClientModel) then) =
      __$$_ClientModelCopyWithImpl<$Res>;
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
class __$$_ClientModelCopyWithImpl<$Res>
    extends _$ClientModelCopyWithImpl<$Res, _$_ClientModel>
    implements _$$_ClientModelCopyWith<$Res> {
  __$$_ClientModelCopyWithImpl(
      _$_ClientModel _value, $Res Function(_$_ClientModel) _then)
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
    return _then(_$_ClientModel(
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
class _$_ClientModel with DiagnosticableTreeMixin implements _ClientModel {
  _$_ClientModel(
      {this.id,
      this.address,
      this.neighborhood,
      this.name,
      this.phone,
      this.number});

  factory _$_ClientModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClientModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientModel &&
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
  _$$_ClientModelCopyWith<_$_ClientModel> get copyWith =>
      __$$_ClientModelCopyWithImpl<_$_ClientModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientModelToJson(
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
      final int? number}) = _$_ClientModel;

  factory _ClientModel.fromJson(Map<String, dynamic> json) =
      _$_ClientModel.fromJson;

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
  _$$_ClientModelCopyWith<_$_ClientModel> get copyWith =>
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
abstract class _$$ClientDataCopyWith<$Res> {
  factory _$$ClientDataCopyWith(
          _$ClientData value, $Res Function(_$ClientData) then) =
      __$$ClientDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClientModel> client});
}

/// @nodoc
class __$$ClientDataCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientData>
    implements _$$ClientDataCopyWith<$Res> {
  __$$ClientDataCopyWithImpl(
      _$ClientData _value, $Res Function(_$ClientData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$ClientData(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as List<ClientModel>,
    ));
  }
}

/// @nodoc

class _$ClientData with DiagnosticableTreeMixin implements ClientData {
  const _$ClientData(this.client);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientData &&
            const DeepCollectionEquality().equals(other.client, client));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(client));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientDataCopyWith<_$ClientData> get copyWith =>
      __$$ClientDataCopyWithImpl<_$ClientData>(this, _$identity);

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
  const factory ClientData(final List<ClientModel> client) = _$ClientData;

  List<ClientModel> get client;
  @JsonKey(ignore: true)
  _$$ClientDataCopyWith<_$ClientData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEmptyCopyWith<$Res> {
  factory _$$ClientEmptyCopyWith(
          _$ClientEmpty value, $Res Function(_$ClientEmpty) then) =
      __$$ClientEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientEmptyCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientEmpty>
    implements _$$ClientEmptyCopyWith<$Res> {
  __$$ClientEmptyCopyWithImpl(
      _$ClientEmpty _value, $Res Function(_$ClientEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientEmpty with DiagnosticableTreeMixin implements ClientEmpty {
  const _$ClientEmpty();

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientEmpty);
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
  const factory ClientEmpty() = _$ClientEmpty;
}

/// @nodoc
abstract class _$$ClientNoneCopyWith<$Res> {
  factory _$$ClientNoneCopyWith(
          _$ClientNone value, $Res Function(_$ClientNone) then) =
      __$$ClientNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientNoneCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientNone>
    implements _$$ClientNoneCopyWith<$Res> {
  __$$ClientNoneCopyWithImpl(
      _$ClientNone _value, $Res Function(_$ClientNone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientNone with DiagnosticableTreeMixin implements ClientNone {
  const _$ClientNone();

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientNone);
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
  const factory ClientNone() = _$ClientNone;
}

/// @nodoc
abstract class _$$ClientErrorCopyWith<$Res> {
  factory _$$ClientErrorCopyWith(
          _$ClientError value, $Res Function(_$ClientError) then) =
      __$$ClientErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$ClientErrorCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientError>
    implements _$$ClientErrorCopyWith<$Res> {
  __$$ClientErrorCopyWithImpl(
      _$ClientError _value, $Res Function(_$ClientError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ClientError(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ClientError with DiagnosticableTreeMixin implements ClientError {
  const _$ClientError([this.error]);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientErrorCopyWith<_$ClientError> get copyWith =>
      __$$ClientErrorCopyWithImpl<_$ClientError>(this, _$identity);

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
  const factory ClientError([final Object? error]) = _$ClientError;

  Object? get error;
  @JsonKey(ignore: true)
  _$$ClientErrorCopyWith<_$ClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientLoadingCopyWith<$Res> {
  factory _$$ClientLoadingCopyWith(
          _$ClientLoading value, $Res Function(_$ClientLoading) then) =
      __$$ClientLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientLoadingCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientLoading>
    implements _$$ClientLoadingCopyWith<$Res> {
  __$$ClientLoadingCopyWithImpl(
      _$ClientLoading _value, $Res Function(_$ClientLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientLoading with DiagnosticableTreeMixin implements ClientLoading {
  const _$ClientLoading();

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientLoading);
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
  const factory ClientLoading() = _$ClientLoading;
}
