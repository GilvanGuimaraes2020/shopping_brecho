// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_expense_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterExpenseController on _RegisterExpenseController, Store {
  Computed<List<String>>? _$categoryNamesComputed;

  @override
  List<String> get categoryNames => (_$categoryNamesComputed ??=
          Computed<List<String>>(() => super.categoryNames,
              name: '_RegisterExpenseController.categoryNames'))
      .value;
  Computed<List<String>>? _$paymentTypeNamesComputed;

  @override
  List<String> get paymentTypeNames => (_$paymentTypeNamesComputed ??=
          Computed<List<String>>(() => super.paymentTypeNames,
              name: '_RegisterExpenseController.paymentTypeNames'))
      .value;
  Computed<String>? _$codeCollectionComputed;

  @override
  String get codeCollection =>
      (_$codeCollectionComputed ??= Computed<String>(() => super.codeCollection,
              name: '_RegisterExpenseController.codeCollection'))
          .value;
  Computed<bool>? _$descriptionIsvalidComputed;

  @override
  bool get descriptionIsvalid => (_$descriptionIsvalidComputed ??=
          Computed<bool>(() => super.descriptionIsvalid,
              name: '_RegisterExpenseController.descriptionIsvalid'))
      .value;
  Computed<bool>? _$priceIsValidComputed;

  @override
  bool get priceIsValid =>
      (_$priceIsValidComputed ??= Computed<bool>(() => super.priceIsValid,
              name: '_RegisterExpenseController.priceIsValid'))
          .value;
  Computed<bool>? _$categoryIsValidComputed;

  @override
  bool get categoryIsValid =>
      (_$categoryIsValidComputed ??= Computed<bool>(() => super.categoryIsValid,
              name: '_RegisterExpenseController.categoryIsValid'))
          .value;
  Computed<bool>? _$paymentIsValidComputed;

  @override
  bool get paymentIsValid =>
      (_$paymentIsValidComputed ??= Computed<bool>(() => super.paymentIsValid,
              name: '_RegisterExpenseController.paymentIsValid'))
          .value;
  Computed<bool>? _$dateIsValidComputed;

  @override
  bool get dateIsValid =>
      (_$dateIsValidComputed ??= Computed<bool>(() => super.dateIsValid,
              name: '_RegisterExpenseController.dateIsValid'))
          .value;
  Computed<bool>? _$formIsValidComputed;

  @override
  bool get formIsValid =>
      (_$formIsValidComputed ??= Computed<bool>(() => super.formIsValid,
              name: '_RegisterExpenseController.formIsValid'))
          .value;

  late final _$autoValidateAlwaysAtom = Atom(
      name: '_RegisterExpenseController.autoValidateAlways', context: context);

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

  late final _$categoryListAtom =
      Atom(name: '_RegisterExpenseController.categoryList', context: context);

  @override
  List<LabelValueModel>? get categoryList {
    _$categoryListAtom.reportRead();
    return super.categoryList;
  }

  @override
  set categoryList(List<LabelValueModel>? value) {
    _$categoryListAtom.reportWrite(value, super.categoryList, () {
      super.categoryList = value;
    });
  }

  late final _$paymentTypeListAtom = Atom(
      name: '_RegisterExpenseController.paymentTypeList', context: context);

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

  late final _$categoryModelAtom =
      Atom(name: '_RegisterExpenseController.categoryModel', context: context);

  @override
  LabelValueModel? get categoryModel {
    _$categoryModelAtom.reportRead();
    return super.categoryModel;
  }

  @override
  set categoryModel(LabelValueModel? value) {
    _$categoryModelAtom.reportWrite(value, super.categoryModel, () {
      super.categoryModel = value;
    });
  }

  late final _$paymentModelAtom =
      Atom(name: '_RegisterExpenseController.paymentModel', context: context);

  @override
  LabelValueModel? get paymentModel {
    _$paymentModelAtom.reportRead();
    return super.paymentModel;
  }

  @override
  set paymentModel(LabelValueModel? value) {
    _$paymentModelAtom.reportWrite(value, super.paymentModel, () {
      super.paymentModel = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_RegisterExpenseController.description', context: context);

  @override
  String? get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String? value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$buyDateAtom =
      Atom(name: '_RegisterExpenseController.buyDate', context: context);

  @override
  String? get buyDate {
    _$buyDateAtom.reportRead();
    return super.buyDate;
  }

  @override
  set buyDate(String? value) {
    _$buyDateAtom.reportWrite(value, super.buyDate, () {
      super.buyDate = value;
    });
  }

  late final _$priceAtom =
      Atom(name: '_RegisterExpenseController.price', context: context);

  @override
  String? get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(String? value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  late final _$installmentAtom =
      Atom(name: '_RegisterExpenseController.installment', context: context);

  @override
  String? get installment {
    _$installmentAtom.reportRead();
    return super.installment;
  }

  @override
  set installment(String? value) {
    _$installmentAtom.reportWrite(value, super.installment, () {
      super.installment = value;
    });
  }

  late final _$accountBankEnumAtom = Atom(
      name: '_RegisterExpenseController.accountBankEnum', context: context);

  @override
  AccountBankEnum? get accountBankEnum {
    _$accountBankEnumAtom.reportRead();
    return super.accountBankEnum;
  }

  @override
  set accountBankEnum(AccountBankEnum? value) {
    _$accountBankEnumAtom.reportWrite(value, super.accountBankEnum, () {
      super.accountBankEnum = value;
    });
  }

  late final _$saveDataAsyncAction =
      AsyncAction('_RegisterExpenseController.saveData', context: context);

  @override
  Future<RequestStatus> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  late final _$_RegisterExpenseControllerActionController =
      ActionController(name: '_RegisterExpenseController', context: context);

  @override
  void setAutoValidateAlways(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setAutoValidateAlways');
    try {
      return super.setAutoValidateAlways(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init() {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.init');
    try {
      return super.init();
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategoryModel(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setCategoryModel');
    try {
      return super.setCategoryModel(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String? value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBuyDate(String? value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setBuyDate');
    try {
      return super.setBuyDate(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrice(String? value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setPrice');
    try {
      return super.setPrice(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPaymentType(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setPaymentType');
    try {
      return super.setPaymentType(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setinstallment(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setinstallment');
    try {
      return super.setinstallment(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateCategory(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.validateCategory');
    try {
      return super.validateCategory(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateDescription(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.validateDescription');
    try {
      return super.validateDescription(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateDate(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.validateDate');
    try {
      return super.validateDate(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatePaymentType(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.validatePaymentType');
    try {
      return super.validatePaymentType(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
autoValidateAlways: ${autoValidateAlways},
categoryList: ${categoryList},
paymentTypeList: ${paymentTypeList},
categoryModel: ${categoryModel},
paymentModel: ${paymentModel},
description: ${description},
buyDate: ${buyDate},
price: ${price},
installment: ${installment},
accountBankEnum: ${accountBankEnum},
categoryNames: ${categoryNames},
paymentTypeNames: ${paymentTypeNames},
codeCollection: ${codeCollection},
descriptionIsvalid: ${descriptionIsvalid},
priceIsValid: ${priceIsValid},
categoryIsValid: ${categoryIsValid},
paymentIsValid: ${paymentIsValid},
dateIsValid: ${dateIsValid},
formIsValid: ${formIsValid}
    ''';
  }
}
