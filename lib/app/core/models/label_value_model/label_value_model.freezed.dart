// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LabelValueModel _$LabelValueModelFromJson(Map<String, dynamic> json) {
  return _LabelValueModel.fromJson(json);
}

/// @nodoc
mixin _$LabelValueModel {
  String? get label => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelValueModelCopyWith<LabelValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelValueModelCopyWith<$Res> {
  factory $LabelValueModelCopyWith(
          LabelValueModel value, $Res Function(LabelValueModel) then) =
      _$LabelValueModelCopyWithImpl<$Res, LabelValueModel>;
  @useResult
  $Res call({String? label, String? value, String? description});
}

/// @nodoc
class _$LabelValueModelCopyWithImpl<$Res, $Val extends LabelValueModel>
    implements $LabelValueModelCopyWith<$Res> {
  _$LabelValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelValueModelImplCopyWith<$Res>
    implements $LabelValueModelCopyWith<$Res> {
  factory _$$LabelValueModelImplCopyWith(_$LabelValueModelImpl value,
          $Res Function(_$LabelValueModelImpl) then) =
      __$$LabelValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label, String? value, String? description});
}

/// @nodoc
class __$$LabelValueModelImplCopyWithImpl<$Res>
    extends _$LabelValueModelCopyWithImpl<$Res, _$LabelValueModelImpl>
    implements _$$LabelValueModelImplCopyWith<$Res> {
  __$$LabelValueModelImplCopyWithImpl(
      _$LabelValueModelImpl _value, $Res Function(_$LabelValueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_$LabelValueModelImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LabelValueModelImpl implements _LabelValueModel {
  _$LabelValueModelImpl({this.label, this.value, this.description});

  factory _$LabelValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelValueModelImplFromJson(json);

  @override
  final String? label;
  @override
  final String? value;
  @override
  final String? description;

  @override
  String toString() {
    return 'LabelValueModel(label: $label, value: $value, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelValueModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, value, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelValueModelImplCopyWith<_$LabelValueModelImpl> get copyWith =>
      __$$LabelValueModelImplCopyWithImpl<_$LabelValueModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelValueModelImplToJson(
      this,
    );
  }
}

abstract class _LabelValueModel implements LabelValueModel {
  factory _LabelValueModel(
      {final String? label,
      final String? value,
      final String? description}) = _$LabelValueModelImpl;

  factory _LabelValueModel.fromJson(Map<String, dynamic> json) =
      _$LabelValueModelImpl.fromJson;

  @override
  String? get label;
  @override
  String? get value;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$LabelValueModelImplCopyWith<_$LabelValueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
