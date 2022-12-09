import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/enums/enum_kanban.dart';
import 'package:shopping_brecho/app/core/models/enums/level_enum.dart';

part 'edit_card_controller.g.dart';

class EditCardController = _EditCardControllerBase with _$EditCardController;

abstract class _EditCardControllerBase with Store {
  
  _EditCardControllerBase();

final TextEditingController responsibleCtl = TextEditingController();
final TextEditingController finishDateCtl = TextEditingController();
final TextEditingController levelCtl = TextEditingController();
final TextEditingController descriptionCtl = TextEditingController();

@observable
KanbanEnum? enumKanban = KanbanEnum.todo;

@observable
LevelEnum? levelEnum = LevelEnum.low;

@action 
void setStatus(dynamic value){

}

@action 
void setLevel(dynamic value){

}
}
