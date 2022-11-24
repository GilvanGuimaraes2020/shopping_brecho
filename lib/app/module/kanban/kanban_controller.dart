import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';

part 'kanban_controller.g.dart';

class KanbanController = _KanbanControllerBase with _$KanbanController;

abstract class _KanbanControllerBase with Store {
  _KanbanControllerBase();

  @observable
  KanbanItem kanbanModel = KanbanItem.none();

  @computed
  List<KanbanItemModel>? get tasks =>
      kanbanModel.maybeWhen(data: (data) => data, orElse: () => null);
}
