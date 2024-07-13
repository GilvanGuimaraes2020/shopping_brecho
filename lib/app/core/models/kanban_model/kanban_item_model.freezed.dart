// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanban_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KanbanItemModel _$KanbanItemModelFromJson(Map<String, dynamic> json) {
  return _KanbanItemModel.fromJson(json);
}

/// @nodoc
mixin _$KanbanItemModel {
  String? get id => throw _privateConstructorUsedError;
  KanbanModel? get kanban => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KanbanItemModelCopyWith<KanbanItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbanItemModelCopyWith<$Res> {
  factory $KanbanItemModelCopyWith(
          KanbanItemModel value, $Res Function(KanbanItemModel) then) =
      _$KanbanItemModelCopyWithImpl<$Res, KanbanItemModel>;
  @useResult
  $Res call({String? id, KanbanModel? kanban});

  $KanbanModelCopyWith<$Res>? get kanban;
}

/// @nodoc
class _$KanbanItemModelCopyWithImpl<$Res, $Val extends KanbanItemModel>
    implements $KanbanItemModelCopyWith<$Res> {
  _$KanbanItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kanban = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kanban: freezed == kanban
          ? _value.kanban
          : kanban // ignore: cast_nullable_to_non_nullable
              as KanbanModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KanbanModelCopyWith<$Res>? get kanban {
    if (_value.kanban == null) {
      return null;
    }

    return $KanbanModelCopyWith<$Res>(_value.kanban!, (value) {
      return _then(_value.copyWith(kanban: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KanbanItemModelImplCopyWith<$Res>
    implements $KanbanItemModelCopyWith<$Res> {
  factory _$$KanbanItemModelImplCopyWith(_$KanbanItemModelImpl value,
          $Res Function(_$KanbanItemModelImpl) then) =
      __$$KanbanItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, KanbanModel? kanban});

  @override
  $KanbanModelCopyWith<$Res>? get kanban;
}

/// @nodoc
class __$$KanbanItemModelImplCopyWithImpl<$Res>
    extends _$KanbanItemModelCopyWithImpl<$Res, _$KanbanItemModelImpl>
    implements _$$KanbanItemModelImplCopyWith<$Res> {
  __$$KanbanItemModelImplCopyWithImpl(
      _$KanbanItemModelImpl _value, $Res Function(_$KanbanItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kanban = freezed,
  }) {
    return _then(_$KanbanItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kanban: freezed == kanban
          ? _value.kanban
          : kanban // ignore: cast_nullable_to_non_nullable
              as KanbanModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$KanbanItemModelImpl
    with DiagnosticableTreeMixin
    implements _KanbanItemModel {
  _$KanbanItemModelImpl({this.id, this.kanban});

  factory _$KanbanItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KanbanItemModelImplFromJson(json);

  @override
  final String? id;
  @override
  final KanbanModel? kanban;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KanbanItemModel(id: $id, kanban: $kanban)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KanbanItemModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('kanban', kanban));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KanbanItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kanban, kanban) || other.kanban == kanban));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, kanban);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KanbanItemModelImplCopyWith<_$KanbanItemModelImpl> get copyWith =>
      __$$KanbanItemModelImplCopyWithImpl<_$KanbanItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KanbanItemModelImplToJson(
      this,
    );
  }
}

abstract class _KanbanItemModel implements KanbanItemModel {
  factory _KanbanItemModel({final String? id, final KanbanModel? kanban}) =
      _$KanbanItemModelImpl;

  factory _KanbanItemModel.fromJson(Map<String, dynamic> json) =
      _$KanbanItemModelImpl.fromJson;

  @override
  String? get id;
  @override
  KanbanModel? get kanban;
  @override
  @JsonKey(ignore: true)
  _$$KanbanItemModelImplCopyWith<_$KanbanItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KanbanItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KanbanItemModel> itemModel) data,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KanbanItemModel> itemModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KanbanItemModel> itemModel)? data,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KanbanItemData value) data,
    required TResult Function(KanbanItemNone value) none,
    required TResult Function(KanbanItemLoading value) loading,
    required TResult Function(KanbanItemError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanItemData value)? data,
    TResult? Function(KanbanItemNone value)? none,
    TResult? Function(KanbanItemLoading value)? loading,
    TResult? Function(KanbanItemError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanItemData value)? data,
    TResult Function(KanbanItemNone value)? none,
    TResult Function(KanbanItemLoading value)? loading,
    TResult Function(KanbanItemError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbanItemCopyWith<$Res> {
  factory $KanbanItemCopyWith(
          KanbanItem value, $Res Function(KanbanItem) then) =
      _$KanbanItemCopyWithImpl<$Res, KanbanItem>;
}

/// @nodoc
class _$KanbanItemCopyWithImpl<$Res, $Val extends KanbanItem>
    implements $KanbanItemCopyWith<$Res> {
  _$KanbanItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KanbanItemDataImplCopyWith<$Res> {
  factory _$$KanbanItemDataImplCopyWith(_$KanbanItemDataImpl value,
          $Res Function(_$KanbanItemDataImpl) then) =
      __$$KanbanItemDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<KanbanItemModel> itemModel});
}

/// @nodoc
class __$$KanbanItemDataImplCopyWithImpl<$Res>
    extends _$KanbanItemCopyWithImpl<$Res, _$KanbanItemDataImpl>
    implements _$$KanbanItemDataImplCopyWith<$Res> {
  __$$KanbanItemDataImplCopyWithImpl(
      _$KanbanItemDataImpl _value, $Res Function(_$KanbanItemDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemModel = null,
  }) {
    return _then(_$KanbanItemDataImpl(
      null == itemModel
          ? _value.itemModel
          : itemModel // ignore: cast_nullable_to_non_nullable
              as List<KanbanItemModel>,
    ));
  }
}

/// @nodoc

class _$KanbanItemDataImpl
    with DiagnosticableTreeMixin
    implements KanbanItemData {
  _$KanbanItemDataImpl(this.itemModel);

  @override
  final List<KanbanItemModel> itemModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KanbanItem.data(itemModel: $itemModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KanbanItem.data'))
      ..add(DiagnosticsProperty('itemModel', itemModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KanbanItemDataImpl &&
            const DeepCollectionEquality().equals(other.itemModel, itemModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KanbanItemDataImplCopyWith<_$KanbanItemDataImpl> get copyWith =>
      __$$KanbanItemDataImplCopyWithImpl<_$KanbanItemDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KanbanItemModel> itemModel) data,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return data(itemModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KanbanItemModel> itemModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return data?.call(itemModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KanbanItemModel> itemModel)? data,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(itemModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KanbanItemData value) data,
    required TResult Function(KanbanItemNone value) none,
    required TResult Function(KanbanItemLoading value) loading,
    required TResult Function(KanbanItemError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanItemData value)? data,
    TResult? Function(KanbanItemNone value)? none,
    TResult? Function(KanbanItemLoading value)? loading,
    TResult? Function(KanbanItemError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanItemData value)? data,
    TResult Function(KanbanItemNone value)? none,
    TResult Function(KanbanItemLoading value)? loading,
    TResult Function(KanbanItemError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class KanbanItemData implements KanbanItem {
  factory KanbanItemData(final List<KanbanItemModel> itemModel) =
      _$KanbanItemDataImpl;

  List<KanbanItemModel> get itemModel;
  @JsonKey(ignore: true)
  _$$KanbanItemDataImplCopyWith<_$KanbanItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KanbanItemNoneImplCopyWith<$Res> {
  factory _$$KanbanItemNoneImplCopyWith(_$KanbanItemNoneImpl value,
          $Res Function(_$KanbanItemNoneImpl) then) =
      __$$KanbanItemNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KanbanItemNoneImplCopyWithImpl<$Res>
    extends _$KanbanItemCopyWithImpl<$Res, _$KanbanItemNoneImpl>
    implements _$$KanbanItemNoneImplCopyWith<$Res> {
  __$$KanbanItemNoneImplCopyWithImpl(
      _$KanbanItemNoneImpl _value, $Res Function(_$KanbanItemNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KanbanItemNoneImpl
    with DiagnosticableTreeMixin
    implements KanbanItemNone {
  _$KanbanItemNoneImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KanbanItem.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'KanbanItem.none'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KanbanItemNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KanbanItemModel> itemModel) data,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KanbanItemModel> itemModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KanbanItemModel> itemModel)? data,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(KanbanItemData value) data,
    required TResult Function(KanbanItemNone value) none,
    required TResult Function(KanbanItemLoading value) loading,
    required TResult Function(KanbanItemError value) error,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanItemData value)? data,
    TResult? Function(KanbanItemNone value)? none,
    TResult? Function(KanbanItemLoading value)? loading,
    TResult? Function(KanbanItemError value)? error,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanItemData value)? data,
    TResult Function(KanbanItemNone value)? none,
    TResult Function(KanbanItemLoading value)? loading,
    TResult Function(KanbanItemError value)? error,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class KanbanItemNone implements KanbanItem {
  factory KanbanItemNone() = _$KanbanItemNoneImpl;
}

/// @nodoc
abstract class _$$KanbanItemLoadingImplCopyWith<$Res> {
  factory _$$KanbanItemLoadingImplCopyWith(_$KanbanItemLoadingImpl value,
          $Res Function(_$KanbanItemLoadingImpl) then) =
      __$$KanbanItemLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KanbanItemLoadingImplCopyWithImpl<$Res>
    extends _$KanbanItemCopyWithImpl<$Res, _$KanbanItemLoadingImpl>
    implements _$$KanbanItemLoadingImplCopyWith<$Res> {
  __$$KanbanItemLoadingImplCopyWithImpl(_$KanbanItemLoadingImpl _value,
      $Res Function(_$KanbanItemLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KanbanItemLoadingImpl
    with DiagnosticableTreeMixin
    implements KanbanItemLoading {
  _$KanbanItemLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KanbanItem.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'KanbanItem.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KanbanItemLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KanbanItemModel> itemModel) data,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KanbanItemModel> itemModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KanbanItemModel> itemModel)? data,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(KanbanItemData value) data,
    required TResult Function(KanbanItemNone value) none,
    required TResult Function(KanbanItemLoading value) loading,
    required TResult Function(KanbanItemError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanItemData value)? data,
    TResult? Function(KanbanItemNone value)? none,
    TResult? Function(KanbanItemLoading value)? loading,
    TResult? Function(KanbanItemError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanItemData value)? data,
    TResult Function(KanbanItemNone value)? none,
    TResult Function(KanbanItemLoading value)? loading,
    TResult Function(KanbanItemError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class KanbanItemLoading implements KanbanItem {
  factory KanbanItemLoading() = _$KanbanItemLoadingImpl;
}

/// @nodoc
abstract class _$$KanbanItemErrorImplCopyWith<$Res> {
  factory _$$KanbanItemErrorImplCopyWith(_$KanbanItemErrorImpl value,
          $Res Function(_$KanbanItemErrorImpl) then) =
      __$$KanbanItemErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KanbanItemErrorImplCopyWithImpl<$Res>
    extends _$KanbanItemCopyWithImpl<$Res, _$KanbanItemErrorImpl>
    implements _$$KanbanItemErrorImplCopyWith<$Res> {
  __$$KanbanItemErrorImplCopyWithImpl(
      _$KanbanItemErrorImpl _value, $Res Function(_$KanbanItemErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KanbanItemErrorImpl
    with DiagnosticableTreeMixin
    implements KanbanItemError {
  _$KanbanItemErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KanbanItem.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'KanbanItem.error'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KanbanItemErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KanbanItemModel> itemModel) data,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KanbanItemModel> itemModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KanbanItemModel> itemModel)? data,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KanbanItemData value) data,
    required TResult Function(KanbanItemNone value) none,
    required TResult Function(KanbanItemLoading value) loading,
    required TResult Function(KanbanItemError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanItemData value)? data,
    TResult? Function(KanbanItemNone value)? none,
    TResult? Function(KanbanItemLoading value)? loading,
    TResult? Function(KanbanItemError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanItemData value)? data,
    TResult Function(KanbanItemNone value)? none,
    TResult Function(KanbanItemLoading value)? loading,
    TResult Function(KanbanItemError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class KanbanItemError implements KanbanItem {
  factory KanbanItemError() = _$KanbanItemErrorImpl;
}
