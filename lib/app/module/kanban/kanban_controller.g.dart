// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$KanbanController on _KanbanControllerBase, Store {
  Computed<List<KanbanItemModel>?>? _$toDoListComputed;

  @override
  List<KanbanItemModel>? get toDoList => (_$toDoListComputed ??=
          Computed<List<KanbanItemModel>?>(() => super.toDoList,
              name: '_KanbanControllerBase.toDoList'))
      .value;
  Computed<List<KanbanItemModel>?>? _$toDoingListComputed;

  @override
  List<KanbanItemModel>? get toDoingList => (_$toDoingListComputed ??=
          Computed<List<KanbanItemModel>?>(() => super.toDoingList,
              name: '_KanbanControllerBase.toDoingList'))
      .value;
  Computed<List<KanbanItemModel>?>? _$toDoneListComputed;

  @override
  List<KanbanItemModel>? get toDoneList => (_$toDoneListComputed ??=
          Computed<List<KanbanItemModel>?>(() => super.toDoneList,
              name: '_KanbanControllerBase.toDoneList'))
      .value;
  Computed<List<KanbanItemModel>?>? _$tasksComputed;

  @override
  List<KanbanItemModel>? get tasks =>
      (_$tasksComputed ??= Computed<List<KanbanItemModel>?>(() => super.tasks,
              name: '_KanbanControllerBase.tasks'))
          .value;
  Computed<String?>? _$keyWordToSearchComputed;

  @override
  String? get keyWordToSearch => (_$keyWordToSearchComputed ??=
          Computed<String?>(() => super.keyWordToSearch,
              name: '_KanbanControllerBase.keyWordToSearch'))
      .value;

  late final _$kanbanModelAtom =
      Atom(name: '_KanbanControllerBase.kanbanModel', context: context);

  @override
  KanbanItem get kanbanModel {
    _$kanbanModelAtom.reportRead();
    return super.kanbanModel;
  }

  @override
  set kanbanModel(KanbanItem value) {
    _$kanbanModelAtom.reportWrite(value, super.kanbanModel, () {
      super.kanbanModel = value;
    });
  }

  late final _$requestStatusAtom =
      Atom(name: '_KanbanControllerBase.requestStatus', context: context);

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

  late final _$changeStatusAtom =
      Atom(name: '_KanbanControllerBase.changeStatus', context: context);

  @override
  bool get changeStatus {
    _$changeStatusAtom.reportRead();
    return super.changeStatus;
  }

  @override
  set changeStatus(bool value) {
    _$changeStatusAtom.reportWrite(value, super.changeStatus, () {
      super.changeStatus = value;
    });
  }

  late final _$lowFilterValueAtom =
      Atom(name: '_KanbanControllerBase.lowFilterValue', context: context);

  @override
  bool get lowFilterValue {
    _$lowFilterValueAtom.reportRead();
    return super.lowFilterValue;
  }

  @override
  set lowFilterValue(bool value) {
    _$lowFilterValueAtom.reportWrite(value, super.lowFilterValue, () {
      super.lowFilterValue = value;
    });
  }

  late final _$mediumFilterValueAtom =
      Atom(name: '_KanbanControllerBase.mediumFilterValue', context: context);

  @override
  bool get mediumFilterValue {
    _$mediumFilterValueAtom.reportRead();
    return super.mediumFilterValue;
  }

  @override
  set mediumFilterValue(bool value) {
    _$mediumFilterValueAtom.reportWrite(value, super.mediumFilterValue, () {
      super.mediumFilterValue = value;
    });
  }

  late final _$highFilterValueAtom =
      Atom(name: '_KanbanControllerBase.highFilterValue', context: context);

  @override
  bool get highFilterValue {
    _$highFilterValueAtom.reportRead();
    return super.highFilterValue;
  }

  @override
  set highFilterValue(bool value) {
    _$highFilterValueAtom.reportWrite(value, super.highFilterValue, () {
      super.highFilterValue = value;
    });
  }

  late final _$getKanbanAsyncAction =
      AsyncAction('_KanbanControllerBase.getKanban', context: context);

  @override
  Future<void> getKanban() {
    return _$getKanbanAsyncAction.run(() => super.getKanban());
  }

  late final _$upStatusAsyncAction =
      AsyncAction('_KanbanControllerBase.upStatus', context: context);

  @override
  Future<void> upStatus(String id, String currentStatus) {
    return _$upStatusAsyncAction.run(() => super.upStatus(id, currentStatus));
  }

  late final _$downStatusAsyncAction =
      AsyncAction('_KanbanControllerBase.downStatus', context: context);

  @override
  Future<void> downStatus(String id, String currentStatus) {
    return _$downStatusAsyncAction
        .run(() => super.downStatus(id, currentStatus));
  }

  late final _$filterKanbanAsyncAction =
      AsyncAction('_KanbanControllerBase.filterKanban', context: context);

  @override
  Future<void> filterKanban() {
    return _$filterKanbanAsyncAction.run(() => super.filterKanban());
  }

  late final _$applyCardFilterAsyncAction =
      AsyncAction('_KanbanControllerBase.applyCardFilter', context: context);

  @override
  Future<void> applyCardFilter() {
    return _$applyCardFilterAsyncAction.run(() => super.applyCardFilter());
  }

  late final _$_KanbanControllerBaseActionController =
      ActionController(name: '_KanbanControllerBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$_KanbanControllerBaseActionController.startAction(
        name: '_KanbanControllerBase.init');
    try {
      return super.init();
    } finally {
      _$_KanbanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void retry() {
    final _$actionInfo = _$_KanbanControllerBaseActionController.startAction(
        name: '_KanbanControllerBase.retry');
    try {
      return super.retry();
    } finally {
      _$_KanbanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLow(bool? value) {
    final _$actionInfo = _$_KanbanControllerBaseActionController.startAction(
        name: '_KanbanControllerBase.setLow');
    try {
      return super.setLow(value);
    } finally {
      _$_KanbanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMedium(bool? value) {
    final _$actionInfo = _$_KanbanControllerBaseActionController.startAction(
        name: '_KanbanControllerBase.setMedium');
    try {
      return super.setMedium(value);
    } finally {
      _$_KanbanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHigh(bool? value) {
    final _$actionInfo = _$_KanbanControllerBaseActionController.startAction(
        name: '_KanbanControllerBase.setHigh');
    try {
      return super.setHigh(value);
    } finally {
      _$_KanbanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setKeyWord(dynamic value) {
    final _$actionInfo = _$_KanbanControllerBaseActionController.startAction(
        name: '_KanbanControllerBase.setKeyWord');
    try {
      return super.setKeyWord(value);
    } finally {
      _$_KanbanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearCardFilter() {
    final _$actionInfo = _$_KanbanControllerBaseActionController.startAction(
        name: '_KanbanControllerBase.clearCardFilter');
    try {
      return super.clearCardFilter();
    } finally {
      _$_KanbanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
kanbanModel: ${kanbanModel},
requestStatus: ${requestStatus},
changeStatus: ${changeStatus},
lowFilterValue: ${lowFilterValue},
mediumFilterValue: ${mediumFilterValue},
highFilterValue: ${highFilterValue},
toDoList: ${toDoList},
toDoingList: ${toDoingList},
toDoneList: ${toDoneList},
tasks: ${tasks},
keyWordToSearch: ${keyWordToSearch}
    ''';
  }
}
