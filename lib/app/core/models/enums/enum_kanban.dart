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

KanbanEnum? kanbanEnumByString(String? value){
  switch (value) {
    case 'DONE':
      return KanbanEnum.done;
    case 'TODO':
      return KanbanEnum.todo;
    case 'DOING':
      return KanbanEnum.doing;
    default:
      return null;
  }
}
