import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/enums/enum_kanban.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

part 'kanban_controller.g.dart';

class KanbanController = _KanbanControllerBase with _$KanbanController;

abstract class _KanbanControllerBase with Store {
  final IKanbanRepository _kanbanRepository;
  _KanbanControllerBase(this._kanbanRepository);

  String keyWord = '';

  final keyWordCtl = TextEditingController();

  @observable
  KanbanItem kanbanModel = KanbanItem.none();

  @observable
  RequestStatus requestStatus =const RequestStatus.none();

  @observable
  bool changeStatus = false;

  @observable
  bool lowFilterValue = false;

  @observable
  bool mediumFilterValue = false;

  @observable
  bool highFilterValue = false;

  @action
  void init() {
    getKanban();
  }

  @action
  void retry() {
    kanbanModel = KanbanItem.none();
    init();
  }

  @action
  Future<void> getKanban() async {
    kanbanModel = await _kanbanRepository.tasks();
  }

  @action
  Future<void> upStatus(String id, String currentStatus) async {
    requestStatus =const RequestStatus.loading();
    String newStatus = '';
    if (currentStatus == KanbanEnum.todo.value) {
      newStatus = KanbanEnum.doing.value;
    } else if (currentStatus == KanbanEnum.doing.value) {
      newStatus = KanbanEnum.done.value;
    }

    final Map<String, String> data = {'status': newStatus};

    requestStatus = await _kanbanRepository.upStatus(id, data);
    if (requestStatus is RequestStatusSuccess) {
      retry();
      BrechoSnackbar.show(
          text: 'status alterado com sucesso!',
          brechoSnackbarStatus: BrechoSnackbarStatus.success);
    } else {
      BrechoSnackbar.show(
          text: 'Erro ao alterar status!',
          brechoSnackbarStatus: BrechoSnackbarStatus.error);
    }
  }

  @action
  Future<void> downStatus(String id, String currentStatus) async {
    requestStatus =const RequestStatus.loading();
    String newStatus = '';
    if (currentStatus == KanbanEnum.doing.value) {
      newStatus = KanbanEnum.todo.value;
    } else if (currentStatus == KanbanEnum.done.value) {
      newStatus = KanbanEnum.doing.value;
    }

    final Map<String, String> data = {'status': newStatus};

    requestStatus = await _kanbanRepository.upStatus(id, data);
    if (requestStatus is RequestStatusSuccess) {
      retry();
      BrechoSnackbar.show(
          text: 'status alterado com sucesso!',
          brechoSnackbarStatus: BrechoSnackbarStatus.success);
    } else {
      BrechoSnackbar.show(
          text: 'Erro ao alterar status!',
          brechoSnackbarStatus: BrechoSnackbarStatus.error);
    }
  }

  @action
  Future<void> filterKanban() async {}

  @action
  void setLow(bool? value) {
    lowFilterValue = value ?? false;
  }

  @action
  void setMedium(bool? value) {
    mediumFilterValue = value ?? false;
  }

  @action
  void setHigh(bool? value) {
    highFilterValue = value ?? false;
  }

  @action
  void setKeyWord(dynamic value) {
    value as String;
    keyWord = value;
  }

  @action
  Future<void> applyCardFilter() async {
    kanbanModel = KanbanItem.loading();
    final List<String?> level = [
      if (lowFilterValue) 'LOW' else null,
      if (mediumFilterValue) 'MEDIUM' else null,
      if (highFilterValue) 'HIGH' else null
    ];

    final Map<String, dynamic> payload = {
      'level': level,
      'responsible': keyWordToSearch
    };
    kanbanModel = await _kanbanRepository.filterKanban(payload: payload);
  }

  @action
  void clearCardFilter() {
    keyWord = keyWordCtl.text = '';
    highFilterValue = false;
    mediumFilterValue = false;
    lowFilterValue = false;
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

  @computed
  String? get keyWordToSearch {
    if (keyWord.isNotEmpty) {
      return keyWord.capitalize();
    }
    return null;
  }
}
