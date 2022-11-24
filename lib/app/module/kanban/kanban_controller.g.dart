// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$KanbanController on _KanbanControllerBase, Store {
  Computed<List<KanbanItemModel>?>? _$tasksComputed;

  @override
  List<KanbanItemModel>? get tasks =>
      (_$tasksComputed ??= Computed<List<KanbanItemModel>?>(() => super.tasks,
              name: '_KanbanControllerBase.tasks'))
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

  @override
  String toString() {
    return '''
kanbanModel: ${kanbanModel},
tasks: ${tasks}
    ''';
  }
}
