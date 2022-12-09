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

  late final _$_EditCardControllerBaseActionController =
      ActionController(name: '_EditCardControllerBase', context: context);

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
  String toString() {
    return '''
enumKanban: ${enumKanban},
levelEnum: ${levelEnum}
    ''';
  }
}
