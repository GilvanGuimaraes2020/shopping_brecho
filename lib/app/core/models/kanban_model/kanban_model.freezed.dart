// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kanban_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KanbanModel _$KanbanModelFromJson(Map<String, dynamic> json) {
  return _KanbanModel.fromJson(json);
}

/// @nodoc
mixin _$KanbanModel {
  DateTime? get createDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get finishDate => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get responsible => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get updateDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KanbanModelCopyWith<KanbanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbanModelCopyWith<$Res> {
  factory $KanbanModelCopyWith(
          KanbanModel value, $Res Function(KanbanModel) then) =
      _$KanbanModelCopyWithImpl<$Res, KanbanModel>;
  @useResult
  $Res call(
      {DateTime? createDate,
      String? description,
      DateTime? finishDate,
      String? level,
      String? responsible,
      String? status,
      String? title,
      DateTime? updateDate});
}

/// @nodoc
class _$KanbanModelCopyWithImpl<$Res, $Val extends KanbanModel>
    implements $KanbanModelCopyWith<$Res> {
  _$KanbanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createDate = freezed,
    Object? description = freezed,
    Object? finishDate = freezed,
    Object? level = freezed,
    Object? responsible = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_value.copyWith(
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      finishDate: freezed == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      responsible: freezed == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: freezed == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KanbanModelCopyWith<$Res>
    implements $KanbanModelCopyWith<$Res> {
  factory _$$_KanbanModelCopyWith(
          _$_KanbanModel value, $Res Function(_$_KanbanModel) then) =
      __$$_KanbanModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? createDate,
      String? description,
      DateTime? finishDate,
      String? level,
      String? responsible,
      String? status,
      String? title,
      DateTime? updateDate});
}

/// @nodoc
class __$$_KanbanModelCopyWithImpl<$Res>
    extends _$KanbanModelCopyWithImpl<$Res, _$_KanbanModel>
    implements _$$_KanbanModelCopyWith<$Res> {
  __$$_KanbanModelCopyWithImpl(
      _$_KanbanModel _value, $Res Function(_$_KanbanModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createDate = freezed,
    Object? description = freezed,
    Object? finishDate = freezed,
    Object? level = freezed,
    Object? responsible = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_$_KanbanModel(
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      finishDate: freezed == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      responsible: freezed == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: freezed == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_KanbanModel implements _KanbanModel {
  _$_KanbanModel(
      {this.createDate,
      this.description,
      this.finishDate,
      this.level,
      this.responsible,
      this.status,
      this.title,
      this.updateDate});

  factory _$_KanbanModel.fromJson(Map<String, dynamic> json) =>
      _$$_KanbanModelFromJson(json);

  @override
  final DateTime? createDate;
  @override
  final String? description;
  @override
  final DateTime? finishDate;
  @override
  final String? level;
  @override
  final String? responsible;
  @override
  final String? status;
  @override
  final String? title;
  @override
  final DateTime? updateDate;

  @override
  String toString() {
    return 'KanbanModel(createDate: $createDate, description: $description, finishDate: $finishDate, level: $level, responsible: $responsible, status: $status, title: $title, updateDate: $updateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KanbanModel &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.responsible, responsible) ||
                other.responsible == responsible) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createDate, description,
      finishDate, level, responsible, status, title, updateDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KanbanModelCopyWith<_$_KanbanModel> get copyWith =>
      __$$_KanbanModelCopyWithImpl<_$_KanbanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KanbanModelToJson(
      this,
    );
  }
}

abstract class _KanbanModel implements KanbanModel {
  factory _KanbanModel(
      {final DateTime? createDate,
      final String? description,
      final DateTime? finishDate,
      final String? level,
      final String? responsible,
      final String? status,
      final String? title,
      final DateTime? updateDate}) = _$_KanbanModel;

  factory _KanbanModel.fromJson(Map<String, dynamic> json) =
      _$_KanbanModel.fromJson;

  @override
  DateTime? get createDate;
  @override
  String? get description;
  @override
  DateTime? get finishDate;
  @override
  String? get level;
  @override
  String? get responsible;
  @override
  String? get status;
  @override
  String? get title;
  @override
  DateTime? get updateDate;
  @override
  @JsonKey(ignore: true)
  _$$_KanbanModelCopyWith<_$_KanbanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Kanban {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KanbanModel kanbanModel) data,
    required TResult Function() none,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KanbanModel kanbanModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KanbanModel kanbanModel)? data,
    TResult Function()? none,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KanbanData value) data,
    required TResult Function(KanbanNone value) none,
    required TResult Function(KanbanLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanData value)? data,
    TResult? Function(KanbanNone value)? none,
    TResult? Function(KanbanLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanData value)? data,
    TResult Function(KanbanNone value)? none,
    TResult Function(KanbanLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbanCopyWith<$Res> {
  factory $KanbanCopyWith(Kanban value, $Res Function(Kanban) then) =
      _$KanbanCopyWithImpl<$Res, Kanban>;
}

/// @nodoc
class _$KanbanCopyWithImpl<$Res, $Val extends Kanban>
    implements $KanbanCopyWith<$Res> {
  _$KanbanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KanbanDataCopyWith<$Res> {
  factory _$$KanbanDataCopyWith(
          _$KanbanData value, $Res Function(_$KanbanData) then) =
      __$$KanbanDataCopyWithImpl<$Res>;
  @useResult
  $Res call({KanbanModel kanbanModel});

  $KanbanModelCopyWith<$Res> get kanbanModel;
}

/// @nodoc
class __$$KanbanDataCopyWithImpl<$Res>
    extends _$KanbanCopyWithImpl<$Res, _$KanbanData>
    implements _$$KanbanDataCopyWith<$Res> {
  __$$KanbanDataCopyWithImpl(
      _$KanbanData _value, $Res Function(_$KanbanData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanbanModel = null,
  }) {
    return _then(_$KanbanData(
      null == kanbanModel
          ? _value.kanbanModel
          : kanbanModel // ignore: cast_nullable_to_non_nullable
              as KanbanModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KanbanModelCopyWith<$Res> get kanbanModel {
    return $KanbanModelCopyWith<$Res>(_value.kanbanModel, (value) {
      return _then(_value.copyWith(kanbanModel: value));
    });
  }
}

/// @nodoc

class _$KanbanData implements KanbanData {
  _$KanbanData(this.kanbanModel);

  @override
  final KanbanModel kanbanModel;

  @override
  String toString() {
    return 'Kanban.data(kanbanModel: $kanbanModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KanbanData &&
            (identical(other.kanbanModel, kanbanModel) ||
                other.kanbanModel == kanbanModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kanbanModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KanbanDataCopyWith<_$KanbanData> get copyWith =>
      __$$KanbanDataCopyWithImpl<_$KanbanData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KanbanModel kanbanModel) data,
    required TResult Function() none,
    required TResult Function() loading,
  }) {
    return data(kanbanModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KanbanModel kanbanModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
  }) {
    return data?.call(kanbanModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KanbanModel kanbanModel)? data,
    TResult Function()? none,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(kanbanModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KanbanData value) data,
    required TResult Function(KanbanNone value) none,
    required TResult Function(KanbanLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanData value)? data,
    TResult? Function(KanbanNone value)? none,
    TResult? Function(KanbanLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanData value)? data,
    TResult Function(KanbanNone value)? none,
    TResult Function(KanbanLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class KanbanData implements Kanban {
  factory KanbanData(final KanbanModel kanbanModel) = _$KanbanData;

  KanbanModel get kanbanModel;
  @JsonKey(ignore: true)
  _$$KanbanDataCopyWith<_$KanbanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KanbanNoneCopyWith<$Res> {
  factory _$$KanbanNoneCopyWith(
          _$KanbanNone value, $Res Function(_$KanbanNone) then) =
      __$$KanbanNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KanbanNoneCopyWithImpl<$Res>
    extends _$KanbanCopyWithImpl<$Res, _$KanbanNone>
    implements _$$KanbanNoneCopyWith<$Res> {
  __$$KanbanNoneCopyWithImpl(
      _$KanbanNone _value, $Res Function(_$KanbanNone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KanbanNone implements KanbanNone {
  _$KanbanNone();

  @override
  String toString() {
    return 'Kanban.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KanbanNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KanbanModel kanbanModel) data,
    required TResult Function() none,
    required TResult Function() loading,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KanbanModel kanbanModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KanbanModel kanbanModel)? data,
    TResult Function()? none,
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
    required TResult Function(KanbanData value) data,
    required TResult Function(KanbanNone value) none,
    required TResult Function(KanbanLoading value) loading,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanData value)? data,
    TResult? Function(KanbanNone value)? none,
    TResult? Function(KanbanLoading value)? loading,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanData value)? data,
    TResult Function(KanbanNone value)? none,
    TResult Function(KanbanLoading value)? loading,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class KanbanNone implements Kanban {
  factory KanbanNone() = _$KanbanNone;
}

/// @nodoc
abstract class _$$KanbanLoadingCopyWith<$Res> {
  factory _$$KanbanLoadingCopyWith(
          _$KanbanLoading value, $Res Function(_$KanbanLoading) then) =
      __$$KanbanLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KanbanLoadingCopyWithImpl<$Res>
    extends _$KanbanCopyWithImpl<$Res, _$KanbanLoading>
    implements _$$KanbanLoadingCopyWith<$Res> {
  __$$KanbanLoadingCopyWithImpl(
      _$KanbanLoading _value, $Res Function(_$KanbanLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KanbanLoading implements KanbanLoading {
  _$KanbanLoading();

  @override
  String toString() {
    return 'Kanban.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KanbanLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KanbanModel kanbanModel) data,
    required TResult Function() none,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KanbanModel kanbanModel)? data,
    TResult? Function()? none,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KanbanModel kanbanModel)? data,
    TResult Function()? none,
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
    required TResult Function(KanbanData value) data,
    required TResult Function(KanbanNone value) none,
    required TResult Function(KanbanLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KanbanData value)? data,
    TResult? Function(KanbanNone value)? none,
    TResult? Function(KanbanLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KanbanData value)? data,
    TResult Function(KanbanNone value)? none,
    TResult Function(KanbanLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class KanbanLoading implements Kanban {
  factory KanbanLoading() = _$KanbanLoading;
}
