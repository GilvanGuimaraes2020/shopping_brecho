import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';

part 'kanban_controller.g.dart';

class KanbanController = _KanbanControllerBase with _$KanbanController;

abstract class _KanbanControllerBase with Store {
  final IKanbanRepository _kanbanRepository;
  _KanbanControllerBase(this._kanbanRepository);

  @observable
  KanbanItem kanbanModel = KanbanItem.none();

  @observable
  RequestStatus requestStatus = RequestStatus.none();

  @action
  void init() {
    getKanban();
  }

  @action
  Future<void> getKanban() async {
    kanbanModel = await _kanbanRepository.tasks();
  }

  @action
  Future<RequestStatus> upDownStatus(String id) async{
    final Map<String, String> data = {'status':'DONE'};
    return _kanbanRepository.upStatus(id, data);
  }

  @action
  void downStatus(String id){

  }

  @computed
  List<KanbanItemModel>? get toDoList =>
      tasks?.where((element) => element.kanban?.status == 'TODO').toList();

  @computed
  List<KanbanItemModel>? get toDoingList =>
      tasks?.where((element) => element.kanban?.status == 'DOING').toList();

  @computed
  List<KanbanItemModel>? get toDoneList =>

      tasks?.where((element) => element.kanban?.status == 'DONE').toList();

  @computed
  List<KanbanItemModel>? get tasks =>
      kanbanModel.maybeWhen(data: (data) => data, orElse: () => null);
}
