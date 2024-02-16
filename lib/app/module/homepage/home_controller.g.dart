// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<AccountAlertModel>>? _$accountAlertListComputed;

  @override
  List<AccountAlertModel> get accountAlertList =>
      (_$accountAlertListComputed ??= Computed<List<AccountAlertModel>>(
              () => super.accountAlertList,
              name: '_HomeControllerBase.accountAlertList'))
          .value;
  Computed<List<AccountRegisterModel>>? _$accountRegisterModelComputed;

  @override
  List<AccountRegisterModel> get accountRegisterModel =>
      (_$accountRegisterModelComputed ??= Computed<List<AccountRegisterModel>>(
              () => super.accountRegisterModel,
              name: '_HomeControllerBase.accountRegisterModel'))
          .value;
  Computed<String?>? _$registersTotalComputed;

  @override
  String? get registersTotal => (_$registersTotalComputed ??= Computed<String?>(
          () => super.registersTotal,
          name: '_HomeControllerBase.registersTotal'))
      .value;
  Computed<List<String?>>? _$totalCategoryComputed;

  @override
  List<String?> get totalCategory => (_$totalCategoryComputed ??=
          Computed<List<String?>>(() => super.totalCategory,
              name: '_HomeControllerBase.totalCategory'))
      .value;
  Computed<bool>? _$endDateIsValidComputed;

  @override
  bool get endDateIsValid =>
      (_$endDateIsValidComputed ??= Computed<bool>(() => super.endDateIsValid,
              name: '_HomeControllerBase.endDateIsValid'))
          .value;
  Computed<bool>? _$startDateIsValidComputed;

  @override
  bool get startDateIsValid => (_$startDateIsValidComputed ??= Computed<bool>(
          () => super.startDateIsValid,
          name: '_HomeControllerBase.startDateIsValid'))
      .value;
  Computed<bool>? _$formIsValidComputed;

  @override
  bool get formIsValid =>
      (_$formIsValidComputed ??= Computed<bool>(() => super.formIsValid,
              name: '_HomeControllerBase.formIsValid'))
          .value;

  late final _$validateAlwaysAtom =
      Atom(name: '_HomeControllerBase.validateAlways', context: context);

  @override
  bool get validateAlways {
    _$validateAlwaysAtom.reportRead();
    return super.validateAlways;
  }

  @override
  set validateAlways(bool value) {
    _$validateAlwaysAtom.reportWrite(value, super.validateAlways, () {
      super.validateAlways = value;
    });
  }

  late final _$connectAtom =
      Atom(name: '_HomeControllerBase.connect', context: context);

  @override
  bool? get connect {
    _$connectAtom.reportRead();
    return super.connect;
  }

  @override
  set connect(bool? value) {
    _$connectAtom.reportWrite(value, super.connect, () {
      super.connect = value;
    });
  }

  late final _$accountAlertAtom =
      Atom(name: '_HomeControllerBase.accountAlert', context: context);

  @override
  AccountAlert get accountAlert {
    _$accountAlertAtom.reportRead();
    return super.accountAlert;
  }

  @override
  set accountAlert(AccountAlert value) {
    _$accountAlertAtom.reportWrite(value, super.accountAlert, () {
      super.accountAlert = value;
    });
  }

  late final _$accountRegisterAtom =
      Atom(name: '_HomeControllerBase.accountRegister', context: context);

  @override
  AccountRegister get accountRegister {
    _$accountRegisterAtom.reportRead();
    return super.accountRegister;
  }

  @override
  set accountRegister(AccountRegister value) {
    _$accountRegisterAtom.reportWrite(value, super.accountRegister, () {
      super.accountRegister = value;
    });
  }

  late final _$accountRegisterFilteredAtom = Atom(
      name: '_HomeControllerBase.accountRegisterFiltered', context: context);

  @override
  AccountRegister get accountRegisterFiltered {
    _$accountRegisterFilteredAtom.reportRead();
    return super.accountRegisterFiltered;
  }

  @override
  set accountRegisterFiltered(AccountRegister value) {
    _$accountRegisterFilteredAtom
        .reportWrite(value, super.accountRegisterFiltered, () {
      super.accountRegisterFiltered = value;
    });
  }

  late final _$totalCategoryAccountAtom =
      Atom(name: '_HomeControllerBase.totalCategoryAccount', context: context);

  @override
  List<double?> get totalCategoryAccount {
    _$totalCategoryAccountAtom.reportRead();
    return super.totalCategoryAccount;
  }

  @override
  set totalCategoryAccount(List<double?> value) {
    _$totalCategoryAccountAtom.reportWrite(value, super.totalCategoryAccount,
        () {
      super.totalCategoryAccount = value;
    });
  }

  late final _$categoriesAtom =
      Atom(name: '_HomeControllerBase.categories', context: context);

  @override
  List<LabelValueModel>? get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<LabelValueModel>? value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$startDateAtom =
      Atom(name: '_HomeControllerBase.startDate', context: context);

  @override
  String? get startDate {
    _$startDateAtom.reportRead();
    return super.startDate;
  }

  @override
  set startDate(String? value) {
    _$startDateAtom.reportWrite(value, super.startDate, () {
      super.startDate = value;
    });
  }

  late final _$endDateAtom =
      Atom(name: '_HomeControllerBase.endDate', context: context);

  @override
  String? get endDate {
    _$endDateAtom.reportRead();
    return super.endDate;
  }

  @override
  set endDate(String? value) {
    _$endDateAtom.reportWrite(value, super.endDate, () {
      super.endDate = value;
    });
  }

  late final _$keywordAtom =
      Atom(name: '_HomeControllerBase.keyword', context: context);

  @override
  String? get keyword {
    _$keywordAtom.reportRead();
    return super.keyword;
  }

  @override
  set keyword(String? value) {
    _$keywordAtom.reportWrite(value, super.keyword, () {
      super.keyword = value;
    });
  }

  late final _$getAccountAlertAsyncAction =
      AsyncAction('_HomeControllerBase.getAccountAlert', context: context);

  @override
  Future<void> getAccountAlert() {
    return _$getAccountAlertAsyncAction.run(() => super.getAccountAlert());
  }

  late final _$getMovementAccountControlAsyncAction = AsyncAction(
      '_HomeControllerBase.getMovementAccountControl',
      context: context);

  @override
  Future<void> getMovementAccountControl() {
    return _$getMovementAccountControlAsyncAction
        .run(() => super.getMovementAccountControl());
  }

  late final _$getMovementAccountRegisterAsyncAction = AsyncAction(
      '_HomeControllerBase.getMovementAccountRegister',
      context: context);

  @override
  Future<void> getMovementAccountRegister() {
    return _$getMovementAccountRegisterAsyncAction
        .run(() => super.getMovementAccountRegister());
  }

  late final _$onFilterAsyncAction =
      AsyncAction('_HomeControllerBase.onFilter', context: context);

  @override
  Future<void> onFilter() {
    return _$onFilterAsyncAction.run(() => super.onFilter());
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.init');
    try {
      return super.init();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAutoValidateAlways(dynamic value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setAutoValidateAlways');
    try {
      return super.setAutoValidateAlways(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStartDate(dynamic value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setStartDate');
    try {
      return super.setStartDate(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEndDate(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setEndDate');
    try {
      return super.setEndDate(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setKeyword(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setKeyword');
    try {
      return super.setKeyword(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getCategory() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getCategory');
    try {
      return super.getCategory();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool onAccordeonAction() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onAccordeonAction');
    try {
      return super.onAccordeonAction();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEndDate(String? value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.validateEndDate');
    try {
      return super.validateEndDate(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateStartDate(String? value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.validateStartDate');
    try {
      return super.validateStartDate(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
validateAlways: ${validateAlways},
connect: ${connect},
accountAlert: ${accountAlert},
accountRegister: ${accountRegister},
accountRegisterFiltered: ${accountRegisterFiltered},
totalCategoryAccount: ${totalCategoryAccount},
categories: ${categories},
startDate: ${startDate},
endDate: ${endDate},
keyword: ${keyword},
accountAlertList: ${accountAlertList},
accountRegisterModel: ${accountRegisterModel},
registersTotal: ${registersTotal},
totalCategory: ${totalCategory},
endDateIsValid: ${endDateIsValid},
startDateIsValid: ${startDateIsValid},
formIsValid: ${formIsValid}
    ''';
  }
}
