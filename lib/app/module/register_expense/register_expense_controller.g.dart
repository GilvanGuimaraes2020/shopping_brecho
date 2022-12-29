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

  late final _$_RegisterExpenseControllerActionController =
      ActionController(name: '_RegisterExpenseController', context: context);

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
  void setDropValue(dynamic value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setDropValue');
    try {
      return super.setDropValue(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSelectCategory(String? data) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.onSelectCategory');
    try {
      return super.onSelectCategory(data);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSelectPayType(String? data) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.onSelectPayType');
    try {
      return super.onSelectPayType(data);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCountPay(String? value) {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.setCountPay');
    try {
      return super.setCountPay(value);
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveData() {
    final _$actionInfo = _$_RegisterExpenseControllerActionController
        .startAction(name: '_RegisterExpenseController.saveData');
    try {
      return super.saveData();
    } finally {
      _$_RegisterExpenseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categoryList: ${categoryList},
categoryNames: ${categoryNames}
    ''';
  }
}
