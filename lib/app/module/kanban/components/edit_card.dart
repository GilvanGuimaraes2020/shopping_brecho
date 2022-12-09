import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/models/enums/enum_kanban.dart';
import 'package:shopping_brecho/app/core/models/enums/level_enum.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/module/kanban/components/edit_card_controller.dart';

class EditCard extends StatefulWidget {
  final KanbanModel model;
  const EditCard({super.key, required this.model});

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  final controller = Modular.get<EditCardController>();

  @override
  void initState() {
    super.initState();
  }

  String levelData(String? value) {
    return kanbanEnumByString(value)?.label ?? 'Sem dados';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(BrechoSpacing.x)),
      child: Material(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: BrechoSpacing.viii,
                  left: BrechoSpacing.viii,
                  right: BrechoSpacing.viii,
                  bottom: BrechoSpacing.xvi),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(BrechoSpacing.x)),
                child:
                    Center(child: const Text('Editar card').h1MediumRegular()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              child: Row(
                children: [
                  Expanded(
                      child: RadioListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: BrechoSpacing.viii),
                          title: Text(KanbanEnum.todo.label),
                          value: KanbanEnum.todo.value,
                          groupValue: controller.enumKanban,
                          onChanged: controller.setStatus)),
                  Expanded(
                      child: RadioListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: BrechoSpacing.viii),
                          title: Text(KanbanEnum.doing.label,
                              overflow: TextOverflow.ellipsis),
                          value: KanbanEnum.doing.value,
                          groupValue: controller.enumKanban,
                          onChanged: controller.setStatus)),
                  Expanded(
                      child: RadioListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: BrechoSpacing.viii),
                          title: Text(KanbanEnum.done.label),
                          value: KanbanEnum.done.value,
                          groupValue: controller.enumKanban,
                          onChanged: controller.setStatus)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              child: TextField(
                controller: controller.responsibleCtl,
                decoration: InputDecoration(
                    label: const Text('Responsavel'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(BrechoSpacing.x))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              child: TextField(
                controller: controller.descriptionCtl,
                decoration: InputDecoration(
                    label: const Text('Descrição'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(BrechoSpacing.x))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              child: TextField(
                controller: controller.finishDateCtl,
                decoration: InputDecoration(
                    label: const Text('Data final'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(BrechoSpacing.x))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              child: Row(
                children: [
                  Expanded(
                      child: RadioListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: BrechoSpacing.viii),
                          title: Text(LevelEnum.low.label ?? ''),
                          value: LevelEnum.low.level,
                          groupValue: controller.levelEnum,
                          onChanged: controller.setLevel)),
                  Expanded(
                      child: RadioListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: BrechoSpacing.viii),
                          title: Text(LevelEnum.medium.label ?? '',
                              overflow: TextOverflow.ellipsis),
                          value: LevelEnum.medium.level,
                          groupValue: controller.levelEnum,
                          onChanged: controller.setLevel)),
                  Expanded(
                      child: RadioListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: BrechoSpacing.viii),
                          title: Text(LevelEnum.high.label ?? ''),
                          value: LevelEnum.high.level,
                          groupValue: controller.levelEnum,
                          onChanged: controller.setLevel)),
                ],
              ),
            ),
            Row(
              children: const [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(BrechoSpacing.viii),
                  child: ElevatedButton(onPressed: null, child: Text('Salvar')),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget textField(String label, String content) {
    final controller = TextEditingController();
    controller.text = content;
    return Column(
      children: [
        Text(label),
        TextField(
          controller: controller,
        )
      ],
    );
  }
}
