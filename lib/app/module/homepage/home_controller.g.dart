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
  Computed<List<dynamic>>? _$accountRegisterModelComputed;

  @override
  List<dynamic> get accountRegisterModel => (_$accountRegisterModelComputed ??=
          Computed<List<dynamic>>(() => super.accountRegisterModel,
              name: '_HomeControllerBase.accountRegisterModel'))
      .value;

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
  dynamic get accountRegister {
    _$accountRegisterAtom.reportRead();
    return super.accountRegister;
  }

  @override
  set accountRegister(dynamic value) {
    _$accountRegisterAtom.reportWrite(value, super.accountRegister, () {
      super.accountRegister = value;
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
  String toString() {
    return '''
connect: ${connect},
accountAlert: ${accountAlert},
accountRegister: ${accountRegister},
accountAlertList: ${accountAlertList},
accountRegisterModel: ${accountRegisterModel}
    ''';
  }
}
