// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_buy_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterBuyController on _RegisterBuyControllerBase, Store {
  Computed<List<String>?>? _$titlesComputed;

  @override
  List<String>? get titles =>
      (_$titlesComputed ??= Computed<List<String>?>(() => super.titles,
              name: '_RegisterBuyControllerBase.titles'))
          .value;
  Computed<List<String>?>? _$subtitlesComputed;

  @override
  List<String>? get subtitles =>
      (_$subtitlesComputed ??= Computed<List<String>?>(() => super.subtitles,
              name: '_RegisterBuyControllerBase.subtitles'))
          .value;
  Computed<List<ClientModel>>? _$listClientComputed;

  @override
  List<ClientModel> get listClient => (_$listClientComputed ??=
          Computed<List<ClientModel>>(() => super.listClient,
              name: '_RegisterBuyControllerBase.listClient'))
      .value;
  Computed<List<String>?>? _$dataTrailingComputed;

  @override
  List<String>? get dataTrailing => (_$dataTrailingComputed ??=
          Computed<List<String>?>(() => super.dataTrailing,
              name: '_RegisterBuyControllerBase.dataTrailing'))
      .value;
  Computed<List<String>?>? _$listProductBrandComputed;

  @override
  List<String>? get listProductBrand => (_$listProductBrandComputed ??=
          Computed<List<String>?>(() => super.listProductBrand,
              name: '_RegisterBuyControllerBase.listProductBrand'))
      .value;
  Computed<List<String>?>? _$listProductModelComputed;

  @override
  List<String>? get listProductModel => (_$listProductModelComputed ??=
          Computed<List<String>?>(() => super.listProductModel,
              name: '_RegisterBuyControllerBase.listProductModel'))
      .value;
  Computed<List<ProductModel>>? _$listProductComputed;

  @override
  List<ProductModel> get listProduct => (_$listProductComputed ??=
          Computed<List<ProductModel>>(() => super.listProduct,
              name: '_RegisterBuyControllerBase.listProduct'))
      .value;
  Computed<List<String>>? _$paymentTypeNamesComputed;

  @override
  List<String> get paymentTypeNames => (_$paymentTypeNamesComputed ??=
          Computed<List<String>>(() => super.paymentTypeNames,
              name: '_RegisterBuyControllerBase.paymentTypeNames'))
      .value;
  Computed<bool>? _$priceIsValidComputed;

  @override
  bool get priceIsValid =>
      (_$priceIsValidComputed ??= Computed<bool>(() => super.priceIsValid,
              name: '_RegisterBuyControllerBase.priceIsValid'))
          .value;
  Computed<bool>? _$dateIsValidComputed;

  @override
  bool get dateIsValid =>
      (_$dateIsValidComputed ??= Computed<bool>(() => super.dateIsValid,
              name: '_RegisterBuyControllerBase.dateIsValid'))
          .value;
  Computed<bool>? _$formIsValidComputed;

  @override
  bool get formIsValid =>
      (_$formIsValidComputed ??= Computed<bool>(() => super.formIsValid,
              name: '_RegisterBuyControllerBase.formIsValid'))
          .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_RegisterBuyControllerBase.isLoading'))
          .value;

  late final _$autoValidateAlawaysAtom = Atom(
      name: '_RegisterBuyControllerBase.autoValidateAlaways', context: context);

  @override
  bool get autoValidateAlaways {
    _$autoValidateAlawaysAtom.reportRead();
    return super.autoValidateAlaways;
  }

  @override
  set autoValidateAlaways(bool value) {
    _$autoValidateAlawaysAtom.reportWrite(value, super.autoValidateAlaways, () {
      super.autoValidateAlaways = value;
    });
  }

  late final _$clientAtom =
      Atom(name: '_RegisterBuyControllerBase.client', context: context);

  @override
  Client get client {
    _$clientAtom.reportRead();
    return super.client;
  }

  @override
  set client(Client value) {
    _$clientAtom.reportWrite(value, super.client, () {
      super.client = value;
    });
  }

  late final _$productAtom =
      Atom(name: '_RegisterBuyControllerBase.product', context: context);

  @override
  Product get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(Product value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$paymentTypeListAtom = Atom(
      name: '_RegisterBuyControllerBase.paymentTypeList', context: context);

  @override
  List<LabelValueModel>? get paymentTypeList {
    _$paymentTypeListAtom.reportRead();
    return super.paymentTypeList;
  }

  @override
  set paymentTypeList(List<LabelValueModel>? value) {
    _$paymentTypeListAtom.reportWrite(value, super.paymentTypeList, () {
      super.paymentTypeList = value;
    });
  }

  late final _$requestStatusAtom =
      Atom(name: '_RegisterBuyControllerBase.requestStatus', context: context);

  @override
  RequestStatus get requestStatus {
    _$requestStatusAtom.reportRead();
    return super.requestStatus;
  }

  @override
  set requestStatus(RequestStatus value) {
    _$requestStatusAtom.reportWrite(value, super.requestStatus, () {
      super.requestStatus = value;
    });
  }

  late final _$saveDataAsyncAction =
      AsyncAction('_RegisterBuyControllerBase.saveData', context: context);

  @override
  Future<RequestStatus> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  late final _$getClientsAsyncAction =
      AsyncAction('_RegisterBuyControllerBase.getClients', context: context);

  @override
  Future<void> getClients() {
    return _$getClientsAsyncAction.run(() => super.getClients());
  }

  late final _$getPaymentListAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.getPaymentList',
      context: context);

  @override
  Future<void> getPaymentList() {
    return _$getPaymentListAsyncAction.run(() => super.getPaymentList());
  }

  late final _$getProductsAsyncAction =
      AsyncAction('_RegisterBuyControllerBase.getProducts', context: context);

  @override
  Future<void> getProducts() {
    return _$getProductsAsyncAction.run(() => super.getProducts());
  }

  late final _$onChangePriceAsyncAction =
      AsyncAction('_RegisterBuyControllerBase.onChangePrice', context: context);

  @override
  Future<void> onChangePrice(String value) {
    return _$onChangePriceAsyncAction.run(() => super.onChangePrice(value));
  }

  late final _$onSelectClientAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.onSelectClient',
      context: context);

  @override
  Future<void> onSelectClient(String? title, String? subtitle) {
    return _$onSelectClientAsyncAction
        .run(() => super.onSelectClient(title, subtitle));
  }

  late final _$onSelectProductAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.onSelectProduct',
      context: context);

  @override
  Future<void> onSelectProduct(String? title, String? subtitle) {
    return _$onSelectProductAsyncAction
        .run(() => super.onSelectProduct(title, subtitle));
  }

  late final _$onSelectPaymentTypeAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.onSelectPaymentType',
      context: context);

  @override
  Future<void> onSelectPaymentType(dynamic value) {
    return _$onSelectPaymentTypeAsyncAction
        .run(() => super.onSelectPaymentType(value));
  }

  late final _$onTapInstallmentAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.onTapInstallment',
      context: context);

  @override
  Future<void> onTapInstallment(dynamic value) {
    return _$onTapInstallmentAsyncAction
        .run(() => super.onTapInstallment(value));
  }

  late final _$_RegisterBuyControllerBaseActionController =
      ActionController(name: '_RegisterBuyControllerBase', context: context);

  @override
  void setAutoValidateAlways(dynamic value) {
    final _$actionInfo = _$_RegisterBuyControllerBaseActionController
        .startAction(name: '_RegisterBuyControllerBase.setAutoValidateAlways');
    try {
      return super.setAutoValidateAlways(value);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
autoValidateAlaways: ${autoValidateAlaways},
client: ${client},
product: ${product},
paymentTypeList: ${paymentTypeList},
requestStatus: ${requestStatus},
titles: ${titles},
subtitles: ${subtitles},
listClient: ${listClient},
dataTrailing: ${dataTrailing},
listProductBrand: ${listProductBrand},
listProductModel: ${listProductModel},
listProduct: ${listProduct},
paymentTypeNames: ${paymentTypeNames},
priceIsValid: ${priceIsValid},
dateIsValid: ${dateIsValid},
formIsValid: ${formIsValid},
isLoading: ${isLoading}
    ''';
  }
}
