// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditCardController on _EditCardControllerBase, Store {
  late final _$enumKanbanAtom =
      Atom(name: '_EditCardControllerBase.enumKanban', context: context);

  @override
  KanbanEnum? get enumKanban {
    _$enumKanbanAtom.reportRead();
    return super.enumKanban;
  }

  @override
  set enumKanban(KanbanEnum? value) {
    _$enumKanbanAtom.reportWrite(value, super.enumKanban, () {
      super.enumKanban = value;
    });
  }

  late final _$levelEnumAtom =
      Atom(name: '_EditCardControllerBase.levelEnum', context: context);

  @override
  LevelEnum? get levelEnum {
    _$levelEnumAtom.reportRead();
    return super.levelEnum;
  }

  @override
  set levelEnum(LevelEnum? value) {
    _$levelEnumAtom.reportWrite(value, super.levelEnum, () {
      super.levelEnum = value;
    });
  }

  late final _$idAtom =
      Atom(name: '_EditCardControllerBase.id', context: context);

  @override
  String? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$responsibleAtom =
      Atom(name: '_EditCardControllerBase.responsible', context: context);

  @override
  String? get responsible {
    _$responsibleAtom.reportRead();
    return super.responsible;
  }

  @override
  set responsible(String? value) {
    _$responsibleAtom.reportWrite(value, super.responsible, () {
      super.responsible = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_EditCardControllerBase.description', context: context);

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

  late final _$finishDateAtom =
      Atom(name: '_EditCardControllerBase.finishDate', context: context);

  @override
  String? get finishDate {
    _$finishDateAtom.reportRead();
    return super.finishDate;
  }

  @override
  set finishDate(String? value) {
    _$finishDateAtom.reportWrite(value, super.finishDate, () {
      super.finishDate = value;
    });
  }

  late final _$titleAtom =
      Atom(name: '_EditCardControllerBase.title', context: context);

  @override
  String? get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String? value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$requestStatusAtom =
      Atom(name: '_EditCardControllerBase.requestStatus', context: context);

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
      AsyncAction('_EditCardControllerBase.saveData', context: context);

  @override
  Future<bool> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  late final _$_EditCardControllerBaseActionController =
      ActionController(name: '_EditCardControllerBase', context: context);

  @override
  void init(KanbanModel? model, String? idCard) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.init');
    try {
      return super.init(model, idCard);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFields(KanbanModel? model) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.setFields');
    try {
      return super.setFields(model);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(dynamic value) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.setStatus');
    try {
      return super.setStatus(value);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLevel(dynamic value) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.setLevel');
    try {
      return super.setLevel(value);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(dynamic value) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResponsible(dynamic value) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.setResponsible');
    try {
      return super.setResponsible(value);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(dynamic value) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFinishDate(dynamic value) {
    final _$actionInfo = _$_EditCardControllerBaseActionController.startAction(
        name: '_EditCardControllerBase.setFinishDate');
    try {
      return super.setFinishDate(value);
    } finally {
      _$_EditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
enumKanban: ${enumKanban},
levelEnum: ${levelEnum},
id: ${id},
responsible: ${responsible},
description: ${description},
finishDate: ${finishDate},
title: ${title},
requestStatus: ${requestStatus}
    ''';
  }
}
