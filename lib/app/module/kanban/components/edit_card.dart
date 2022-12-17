import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/models/enums/enum_kanban.dart';
import 'package:shopping_brecho/app/core/models/enums/level_enum.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/module/kanban/components/edit_card_controller.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class EditCard extends StatefulWidget {
  final KanbanModel? model;
  final String? id;
  const EditCard({super.key, this.model, this.id});

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  final controller = Modular.get<EditCardController>();

  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      controller.init(widget.model, widget.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(BrechoSpacing.x)),
      child: Observer(builder: (context) {
        return Material(
          child: SingleChildScrollView(
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
                    child: Center(
                        child: const Text('Editar card').h1MediumRegular()),
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
                              value: KanbanEnum.todo,
                              groupValue: controller.enumKanban,
                              onChanged: controller.setStatus)),
                      Expanded(
                          child: RadioListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: BrechoSpacing.viii),
                              title: Text(KanbanEnum.doing.label,
                                  overflow: TextOverflow.ellipsis),
                              value: KanbanEnum.doing,
                              groupValue: controller.enumKanban,
                              onChanged: controller.setStatus)),
                      Expanded(
                          child: RadioListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: BrechoSpacing.viii),
                              title: Text(KanbanEnum.done.label),
                              value: KanbanEnum.done,
                              groupValue: controller.enumKanban,
                              onChanged: controller.setStatus)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(BrechoSpacing.viii),
                  child: TextField(
                    enabled: widget.id == null,
                    controller: controller.titleCtl,
                    onChanged: controller.setTitle,
                    decoration: InputDecoration(
                        label: const Text('Titulo'),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(BrechoSpacing.x))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(BrechoSpacing.viii),
                  child: TextField(
                    controller: controller.responsibleCtl,
                    onChanged: controller.setResponsible,
                    decoration: InputDecoration(
                        label: const Text('Responsavel'),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(BrechoSpacing.x))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(BrechoSpacing.viii),
                  child: TextField(
                    controller: controller.descriptionCtl,
                    onChanged: controller.setDescription,
                    decoration: InputDecoration(
                        label: const Text('Descrição'),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(BrechoSpacing.x))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(BrechoSpacing.viii),
                  child: TextField(
                    controller: controller.finishDateCtl,
                    onChanged: controller.setFinishDate,
                    decoration: InputDecoration(
                        label: const Text('Data final'),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(BrechoSpacing.x))),
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
                              value: LevelEnum.low,
                              groupValue: controller.levelEnum,
                              onChanged: controller.setLevel)),
                      Expanded(
                          child: RadioListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: BrechoSpacing.viii),
                              title: Text(LevelEnum.medium.label ?? '',
                                  overflow: TextOverflow.ellipsis),
                              value: LevelEnum.medium,
                              groupValue: controller.levelEnum,
                              onChanged: controller.setLevel)),
                      Expanded(
                          child: RadioListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: BrechoSpacing.viii),
                              title: Text(LevelEnum.high.label ?? ''),
                              value: LevelEnum.high,
                              groupValue: controller.levelEnum,
                              onChanged: controller.setLevel)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(BrechoSpacing.viii),
                      child: ElevatedButton(
                          onPressed: () async {
                            final bool result = await controller.saveData();
                            late String label;
                            late BrechoSnackbarStatus status;
                            if (result) {
                              label = 'Dados salvo com sucesso!';
                              status = BrechoSnackbarStatus.success;
                              Modular.to.pop();
                            } else {
                              label = 'Dados não foram salvos!';
                              status = BrechoSnackbarStatus.error;
                            }
                            BrechoSnackbar.show(
                                text: label, brechoSnackbarStatus: status);
                          },
                          child: widget.id != null
                              ? const Text('Atualizar')
                              : const Text('Salvar')),
                    )),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
