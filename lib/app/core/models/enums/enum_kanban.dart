enum KanbanEnum { todo, doing, done }

extension KanbanExtension on KanbanEnum {
  String get value {
    switch (this) {
      case KanbanEnum.done:
        return 'DONE';
      case KanbanEnum.todo:
        return 'TODO';
      case KanbanEnum.doing:
        return 'DOING';
    }
  }

  String get label{
    switch (this) {
      case KanbanEnum.todo:
        return 'Fazer';
      case KanbanEnum.doing:
      return 'Fazendo';
      case KanbanEnum.done:
      return 'Feito';
    }
  }
}
