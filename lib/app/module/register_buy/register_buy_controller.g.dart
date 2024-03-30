// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_buy_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterBuyController on _RegisterBuyControllerBase, Store {
  Computed<FreezedStatus<List<CustomerModel>>>? _$clientComputed;

  @override
  FreezedStatus<List<CustomerModel>> get client => (_$clientComputed ??=
          Computed<FreezedStatus<List<CustomerModel>>>(() => super.client,
              name: '_RegisterBuyControllerBase.client'))
      .value;
  Computed<FreezedStatus<List<ProductRelationalModel>>>? _$productsComputed;

  @override
  FreezedStatus<List<ProductRelationalModel>> get products =>
      (_$productsComputed ??=
              Computed<FreezedStatus<List<ProductRelationalModel>>>(
                  () => super.products,
                  name: '_RegisterBuyControllerBase.products'))
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
  Computed<bool>? _$clientIsValidComputed;

  @override
  bool get clientIsValid =>
      (_$clientIsValidComputed ??= Computed<bool>(() => super.clientIsValid,
              name: '_RegisterBuyControllerBase.clientIsValid'))
          .value;
  Computed<bool>? _$productIsValidComputed;

  @override
  bool get productIsValid =>
      (_$productIsValidComputed ??= Computed<bool>(() => super.productIsValid,
              name: '_RegisterBuyControllerBase.productIsValid'))
          .value;
  Computed<bool>? _$paymentTypeIsValidComputed;

  @override
  bool get paymentTypeIsValid => (_$paymentTypeIsValidComputed ??=
          Computed<bool>(() => super.paymentTypeIsValid,
              name: '_RegisterBuyControllerBase.paymentTypeIsValid'))
      .value;
  Computed<FreezedStatus<List<ProductPendencyModel>>>?
      _$productPendencyAllComputed;

  @override
  FreezedStatus<List<ProductPendencyModel>> get productPendencyAll =>
      (_$productPendencyAllComputed ??=
              Computed<FreezedStatus<List<ProductPendencyModel>>>(
                  () => super.productPendencyAll,
                  name: '_RegisterBuyControllerBase.productPendencyAll'))
          .value;
  Computed<ObservableList<int>>? _$pendencySelectedsComputed;

  @override
  ObservableList<int> get pendencySelecteds => (_$pendencySelectedsComputed ??=
          Computed<ObservableList<int>>(() => super.pendencySelecteds,
              name: '_RegisterBuyControllerBase.pendencySelecteds'))
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

  late final _$autoValidateAlwaysAtom = Atom(
      name: '_RegisterBuyControllerBase.autoValidateAlways', context: context);

  @override
  bool get autoValidateAlways {
    _$autoValidateAlwaysAtom.reportRead();
    return super.autoValidateAlways;
  }

  @override
  set autoValidateAlways(bool value) {
    _$autoValidateAlwaysAtom.reportWrite(value, super.autoValidateAlways, () {
      super.autoValidateAlways = value;
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

  late final _$saveProductStockAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.saveProductStock',
      context: context);

  @override
  Future<FreezedStatus<dynamic>> saveProductStock() {
    return _$saveProductStockAsyncAction.run(() => super.saveProductStock());
  }

  late final _$getClientsAsyncAction =
      AsyncAction('_RegisterBuyControllerBase.getClients', context: context);

  @override
  Future<List<Map<String, dynamic>>> getClients(String? keyword) {
    return _$getClientsAsyncAction.run(() => super.getClients(keyword));
  }

  late final _$onChangePriceAsyncAction =
      AsyncAction('_RegisterBuyControllerBase.onChangePrice', context: context);

  @override
  Future<void> onChangePrice(dynamic value) {
    return _$onChangePriceAsyncAction.run(() => super.onChangePrice(value));
  }

  late final _$setCustomerNameAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.setCustomerName',
      context: context);

  @override
  Future<void> setCustomerName(dynamic value) {
    return _$setCustomerNameAsyncAction.run(() => super.setCustomerName(value));
  }

  late final _$onSelectClientAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.onSelectClient',
      context: context);

  @override
  Future<void> onSelectClient(dynamic value) {
    return _$onSelectClientAsyncAction.run(() => super.onSelectClient(value));
  }

  late final _$registerBuySelectProductAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.registerBuySelectProduct',
      context: context);

  @override
  Future<void> registerBuySelectProduct(dynamic value) {
    return _$registerBuySelectProductAsyncAction
        .run(() => super.registerBuySelectProduct(value));
  }

  late final _$setProductColorAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.setProductColor',
      context: context);

  @override
  Future<void> setProductColor(dynamic value) {
    return _$setProductColorAsyncAction.run(() => super.setProductColor(value));
  }

  late final _$registerBuySetPaymentTypeAsyncAction = AsyncAction(
      '_RegisterBuyControllerBase.registerBuySetPaymentType',
      context: context);

  @override
  Future<void> registerBuySetPaymentType(dynamic value) {
    return _$registerBuySetPaymentTypeAsyncAction
        .run(() => super.registerBuySetPaymentType(value));
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
  void registerBuyOnChangeDate(dynamic value) {
    final _$actionInfo =
        _$_RegisterBuyControllerBaseActionController.startAction(
            name: '_RegisterBuyControllerBase.registerBuyOnChangeDate');
    try {
      return super.registerBuyOnChangeDate(value);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSelectPendency(int pendencyId) {
    final _$actionInfo = _$_RegisterBuyControllerBaseActionController
        .startAction(name: '_RegisterBuyControllerBase.onSelectPendency');
    try {
      return super.onSelectPendency(pendencyId);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateClient(dynamic value) {
    final _$actionInfo = _$_RegisterBuyControllerBaseActionController
        .startAction(name: '_RegisterBuyControllerBase.validateClient');
    try {
      return super.validateClient(value);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateProduct(dynamic value) {
    final _$actionInfo = _$_RegisterBuyControllerBaseActionController
        .startAction(name: '_RegisterBuyControllerBase.validateProduct');
    try {
      return super.validateProduct(value);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatePrice(dynamic value) {
    final _$actionInfo = _$_RegisterBuyControllerBaseActionController
        .startAction(name: '_RegisterBuyControllerBase.validatePrice');
    try {
      return super.validatePrice(value);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatePaymentType(dynamic value) {
    final _$actionInfo = _$_RegisterBuyControllerBaseActionController
        .startAction(name: '_RegisterBuyControllerBase.validatePaymentType');
    try {
      return super.validatePaymentType(value);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateDate(dynamic value) {
    final _$actionInfo = _$_RegisterBuyControllerBaseActionController
        .startAction(name: '_RegisterBuyControllerBase.validateDate');
    try {
      return super.validateDate(value);
    } finally {
      _$_RegisterBuyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
autoValidateAlways: ${autoValidateAlways},
paymentTypeList: ${paymentTypeList},
requestStatus: ${requestStatus},
client: ${client},
products: ${products},
priceIsValid: ${priceIsValid},
dateIsValid: ${dateIsValid},
clientIsValid: ${clientIsValid},
productIsValid: ${productIsValid},
paymentTypeIsValid: ${paymentTypeIsValid},
productPendencyAll: ${productPendencyAll},
pendencySelecteds: ${pendencySelecteds},
formIsValid: ${formIsValid},
isLoading: ${isLoading}
    ''';
  }
}
