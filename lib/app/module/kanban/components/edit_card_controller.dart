import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/enums/enum_kanban.dart';
import 'package:shopping_brecho/app/core/models/enums/level_enum.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';

part 'edit_card_controller.g.dart';

class EditCardController = _EditCardControllerBase with _$EditCardController;

abstract class _EditCardControllerBase with Store {
  final IKanbanRepository _repository;
  _EditCardControllerBase(this._repository);

  final TextEditingController titleCtl = TextEditingController();
  final TextEditingController responsibleCtl = TextEditingController();
  final TextEditingController finishDateCtl = TextEditingController();
  final TextEditingController levelCtl = TextEditingController();
  final TextEditingController descriptionCtl = TextEditingController();

  @observable
  KanbanEnum? enumKanban = KanbanEnum.todo;

  @observable
  LevelEnum? levelEnum = LevelEnum.low;

  @observable
  String? id;

  @observable
  String? responsible;

  @observable
  String? description;

  @observable
  String? finishDate;

  @observable
  String? title;

  @observable
  RequestStatus requestStatus = RequestStatus.none();

  @action
  void init(KanbanModel? model, String? idCard) {
    setFields(model);
    id = idCard;
  }

  @action
  void setFields(KanbanModel? model) {
    enumKanban = model?.statusKanbanEnum;
    title = titleCtl.text = model?.title ?? '';
    responsible = responsibleCtl.text = model?.responsible ?? '';
    description = descriptionCtl.text = model?.description ?? '';
    finishDate =
        finishDateCtl.text = FormatHelper.brazilianDate(model?.finishDate);
    levelEnum = model?.levelEnum;
  }

  @action
  void setStatus(dynamic value) {
    enumKanban = value as KanbanEnum;
  }

  @action
  void setLevel(dynamic value) {
    levelEnum = value as LevelEnum;
  }

  @action
  void setTitle(dynamic value) {
    title = value as String;
  }

  @action
  void setResponsible(dynamic value) {
    responsible = value as String;
  }

  @action
  void setDescription(dynamic value) {
    description = value as String;
  }

  @action
  void setFinishDate(dynamic value) {
    finishDate = value as String;
  }

  @action
  Future<bool> saveData() async {
    requestStatus = RequestStatus.loading();
    final payload = {
      'description': description,
      'level': levelEnum?.level,
      'status': enumKanban?.value,
      'responsible': responsible,
      'update_date': DateTime.now(),
      'finish_date': FormatHelper.parseToDDMMYYYY(finishDate),
      if (id == null) ...{'create_date': DateTime.now(), 'title': title}
    };
    requestStatus = await _repository.saveData(id: id, payload: payload);
    if (requestStatus is RequestStatusSuccess) {
      return true;
    } else {
      return false;
    }
  }
}
