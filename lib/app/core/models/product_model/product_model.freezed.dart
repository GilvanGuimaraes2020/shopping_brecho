// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String? get id => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({String? id, String? brand, String? model, String? type});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? model = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? brand, String? model, String? type});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? model = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ProductModelImpl with DiagnosticableTreeMixin implements _ProductModel {
  _$ProductModelImpl({this.id, this.brand, this.model, this.type});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? brand;
  @override
  final String? model;
  @override
  final String? type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductModel(id: $id, brand: $brand, model: $model, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, brand, model, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {final String? id,
      final String? brand,
      final String? model,
      final String? type}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get brand;
  @override
  String? get model;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Product {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productModel) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productModel)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productModel)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductData value) data,
    required TResult Function(ProductEmpty value) empty,
    required TResult Function(ProductNone value) none,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductEmpty value)? empty,
    TResult? Function(ProductNone value)? none,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductData value)? data,
    TResult Function(ProductEmpty value)? empty,
    TResult Function(ProductNone value)? none,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productModel});
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = null,
  }) {
    return _then(_$ProductDataImpl(
      null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$ProductDataImpl with DiagnosticableTreeMixin implements ProductData {
  const _$ProductDataImpl(this.productModel);

  @override
  final List<ProductModel> productModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product.data(productModel: $productModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product.data'))
      ..add(DiagnosticsProperty('productModel', productModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            const DeepCollectionEquality()
                .equals(other.productModel, productModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productModel) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
  }) {
    return data(productModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productModel)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
  }) {
    return data?.call(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productModel)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductData value) data,
    required TResult Function(ProductEmpty value) empty,
    required TResult Function(ProductNone value) none,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductEmpty value)? empty,
    TResult? Function(ProductNone value)? none,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductData value)? data,
    TResult Function(ProductEmpty value)? empty,
    TResult Function(ProductNone value)? none,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ProductData implements Product {
  const factory ProductData(final List<ProductModel> productModel) =
      _$ProductDataImpl;

  List<ProductModel> get productModel;
  @JsonKey(ignore: true)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductEmptyImplCopyWith<$Res> {
  factory _$$ProductEmptyImplCopyWith(
          _$ProductEmptyImpl value, $Res Function(_$ProductEmptyImpl) then) =
      __$$ProductEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductEmptyImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductEmptyImpl>
    implements _$$ProductEmptyImplCopyWith<$Res> {
  __$$ProductEmptyImplCopyWithImpl(
      _$ProductEmptyImpl _value, $Res Function(_$ProductEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductEmptyImpl with DiagnosticableTreeMixin implements ProductEmpty {
  const _$ProductEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Product.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productModel) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productModel)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productModel)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
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
    required TResult Function(ProductData value) data,
    required TResult Function(ProductEmpty value) empty,
    required TResult Function(ProductNone value) none,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductEmpty value)? empty,
    TResult? Function(ProductNone value)? none,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductData value)? data,
    TResult Function(ProductEmpty value)? empty,
    TResult Function(ProductNone value)? none,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProductEmpty implements Product {
  const factory ProductEmpty() = _$ProductEmptyImpl;
}

/// @nodoc
abstract class _$$ProductNoneImplCopyWith<$Res> {
  factory _$$ProductNoneImplCopyWith(
          _$ProductNoneImpl value, $Res Function(_$ProductNoneImpl) then) =
      __$$ProductNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductNoneImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductNoneImpl>
    implements _$$ProductNoneImplCopyWith<$Res> {
  __$$ProductNoneImplCopyWithImpl(
      _$ProductNoneImpl _value, $Res Function(_$ProductNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductNoneImpl with DiagnosticableTreeMixin implements ProductNone {
  const _$ProductNoneImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Product.none'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productModel) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productModel)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productModel)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
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
    required TResult Function(ProductData value) data,
    required TResult Function(ProductEmpty value) empty,
    required TResult Function(ProductNone value) none,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductError value) error,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductEmpty value)? empty,
    TResult? Function(ProductNone value)? none,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductError value)? error,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductData value)? data,
    TResult Function(ProductEmpty value)? empty,
    TResult Function(ProductNone value)? none,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class ProductNone implements Product {
  const factory ProductNone() = _$ProductNoneImpl;
}

/// @nodoc
abstract class _$$ProductLoadingImplCopyWith<$Res> {
  factory _$$ProductLoadingImplCopyWith(_$ProductLoadingImpl value,
          $Res Function(_$ProductLoadingImpl) then) =
      __$$ProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductLoadingImpl>
    implements _$$ProductLoadingImplCopyWith<$Res> {
  __$$ProductLoadingImplCopyWithImpl(
      _$ProductLoadingImpl _value, $Res Function(_$ProductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductLoadingImpl
    with DiagnosticableTreeMixin
    implements ProductLoading {
  const _$ProductLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Product.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productModel) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productModel)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productModel)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
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
    required TResult Function(ProductData value) data,
    required TResult Function(ProductEmpty value) empty,
    required TResult Function(ProductNone value) none,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductEmpty value)? empty,
    TResult? Function(ProductNone value)? none,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductData value)? data,
    TResult Function(ProductEmpty value)? empty,
    TResult Function(ProductNone value)? none,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductLoading implements Product {
  const factory ProductLoading() = _$ProductLoadingImpl;
}

/// @nodoc
abstract class _$$ProductErrorImplCopyWith<$Res> {
  factory _$$ProductErrorImplCopyWith(
          _$ProductErrorImpl value, $Res Function(_$ProductErrorImpl) then) =
      __$$ProductErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$ProductErrorImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductErrorImpl>
    implements _$$ProductErrorImplCopyWith<$Res> {
  __$$ProductErrorImplCopyWithImpl(
      _$ProductErrorImpl _value, $Res Function(_$ProductErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ProductErrorImpl(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ProductErrorImpl with DiagnosticableTreeMixin implements ProductError {
  const _$ProductErrorImpl([this.error]);

  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      __$$ProductErrorImplCopyWithImpl<_$ProductErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productModel) data,
    required TResult Function() empty,
    required TResult Function() none,
    required TResult Function() loading,
    required TResult Function(Object? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productModel)? data,
    TResult? Function()? empty,
    TResult? Function()? none,
    TResult? Function()? loading,
    TResult? Function(Object? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productModel)? data,
    TResult Function()? empty,
    TResult Function()? none,
    TResult Function()? loading,
    TResult Function(Object? error)? error,
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
    required TResult Function(ProductData value) data,
    required TResult Function(ProductEmpty value) empty,
    required TResult Function(ProductNone value) none,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductEmpty value)? empty,
    TResult? Function(ProductNone value)? none,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductData value)? data,
    TResult Function(ProductEmpty value)? empty,
    TResult Function(ProductNone value)? none,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductError implements Product {
  const factory ProductError([final Object? error]) = _$ProductErrorImpl;

  Object? get error;
  @JsonKey(ignore: true)
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
