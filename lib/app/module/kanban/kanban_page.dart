import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/models/enums/enum_kanban.dart';
import 'package:shopping_brecho/app/core/models/enums/status_due_enum.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/module/kanban/components/edit_card.dart';
import 'package:shopping_brecho/app/module/kanban/components/filter_card.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_controller.dart';
import 'package:shopping_brecho/app/utils/modal_dialog/modal_dialog.dart';

class KanbanPage extends StatefulWidget {
  const KanbanPage({super.key});

  @override
  State<KanbanPage> createState() => _KanbanPageState();
}

class _KanbanPageState extends State<KanbanPage> {
  final controller = Modular.get<KanbanController>();

  @override
  void initState() {
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return SafeArea(
        child: ColoredBox(
          color: BrechoColors.neutral10,
          child: CustomScrollView(slivers: [
            SliverAppBar.large(
              actions: [
                ElevatedButton.icon(
                  onPressed: () async {
                    // await controller.filterKanban();
                    BrechoDialog.showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return FilterCardWidget(
                            controller: controller,
                          );
                        });
                  },
                  icon: const Icon(Icons.format_list_bulleted),
                  label: const Text('Filtro'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    BrechoDialog.showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const EditCard();
                        }).then((value) => controller.init());
                  },
                  icon: const Icon(Icons.add_circle),
                  label: const Text('Adicionar'),
                )
              ],
              elevation: 10,
              shadowColor: Colors.blue.shade300,
              centerTitle: true,
              title: const Text('Tarefas'),
            ),
            controller.kanbanModel.maybeWhen(
              data: (data) {
                return SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TaskItem(
                          kanbanEnum: KanbanEnum.todo,
                          kanbanItem: controller.toDoList ?? [],
                          upStatus: controller.upStatus,
                          downStatus: controller.downStatus,
                        ),
                        TaskItem(
                          kanbanEnum: KanbanEnum.doing,
                          kanbanItem: controller.toDoingList ?? [],
                          upStatus: controller.upStatus,
                          downStatus: controller.downStatus,
                        ),
                        TaskItem(
                          kanbanEnum: KanbanEnum.done,
                          kanbanItem: controller.toDoneList ?? [],
                          upStatus: controller.upStatus,
                          downStatus: controller.downStatus,
                        ),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => SliverPadding(
                padding: const EdgeInsets.all(BrechoSpacing.xiv),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: const CircularProgressIndicator(
                        strokeWidth: 8,
                      )),
                ),
              ),
            )
          ]),
        ),
      );
    });
  }
}

class TaskItem extends StatelessWidget {
  final KanbanEnum? kanbanEnum;
  final void Function(String, String)? upStatus;
  final void Function(String, String)? downStatus;
  final List<KanbanItemModel> kanbanItem;

  const TaskItem({
    super.key,
    this.kanbanEnum,
    required this.kanbanItem,
    this.upStatus,
    this.downStatus,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Container(
        width: 250,
        height: double.maxFinite,
        padding: const EdgeInsets.all(BrechoSpacing.vi),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(BrechoSpacing.vi)),
            color: BrechoColors.neutral5),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius:
                      BorderRadius.all(Radius.circular(BrechoSpacing.viii))),
              padding: const EdgeInsets.only(bottom: BrechoSpacing.vi),
              child: Center(
                  child: Text(kanbanEnum?.label ?? '').bodyMediumRegular()),
            ),
            Expanded(
                child: SizedBox(
              child: ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: kanbanItem.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(BrechoSpacing.x),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: realceCard(
                                        kanbanItem[index].kanban!.statusLimit),
                                    blurRadius: 10,
                                    offset: const Offset(8, 10))
                              ],
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(BrechoSpacing.x)),
                              color: BrechoColors.neutral8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                key: Key(kanbanItem[index].id!),
                                onTap: () async {
                                  await BrechoDialog.showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return EditCard(
                                          model: kanbanItem[index].kanban,
                                          id: kanbanItem[index].id,
                                        );
                                      });
                                },
                                child: Center(
                                  child: Text(kanbanItem[index]
                                              .kanban
                                              ?.responsible ??
                                          'Sem dados')
                                      .bodySmallMedium(),
                                ),
                              ),
                              const SizedBox(
                                height: BrechoSpacing.iv,
                              ),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Titulo: ',
                                    style:
                                        const Text('').bodySmallMedium().style),
                                TextSpan(
                                    text: kanbanItem[index].kanban?.title ??
                                        'Sem dados',
                                    style:
                                        const Text('').bodySmallMedium().style)
                              ])),
                              const SizedBox(
                                height: BrechoSpacing.iv,
                              ),
                              Row(
                                children: [
                                  RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: 'Inicio: ',
                                        style: const Text('')
                                            .bodyMediumSemiBold()
                                            .style),
                                    TextSpan(
                                        text: kanbanItem[index]
                                                .kanban
                                                ?.createDate ??
                                            'Sem dados',
                                        style: const Text('')
                                            .bodySmallMedium()
                                            .style)
                                  ])),
                                  const Expanded(child: SizedBox()),
                                  RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: 'Fim: ',
                                        style: const Text('')
                                            .bodyMediumSemiBold()
                                            .style),
                                    TextSpan(
                                        text: kanbanItem[index]
                                                .kanban
                                                ?.shortFinishedDate ??
                                            'Sem dados',
                                        style: const Text('')
                                            .bodySmallMedium()
                                            .style)
                                  ])),
                                ],
                              ),
                              const Divider(
                                height: BrechoSpacing.iv,
                              ),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Desc: ',
                                    style: const Text('')
                                        .bodyMediumSemiBold()
                                        .style),
                                TextSpan(
                                    text:
                                        kanbanItem[index].kanban?.description ??
                                            'Sem dados',
                                    style: const Text(
                                      '',
                                      maxLines: 3,
                                    ).bodySmallMedium().style)
                              ])),
                              const SizedBox(
                                height: BrechoSpacing.vi,
                              ),
                              Row(
                                mainAxisAlignment: _mainAxis,
                                children: [
                                  if (kanbanEnum?.value !=
                                      KanbanEnum.todo.value)
                                    GestureDetector(
                                      onTap: () => downStatus!(
                                          kanbanItem[index].id ?? '',
                                          kanbanItem[index].kanban?.status ??
                                              ''),
                                      child: const Icon(
                                        Icons.arrow_back_ios,
                                        size: 18,
                                      ),
                                    ),
                                  if (kanbanEnum?.value !=
                                      KanbanEnum.done.value)
                                    GestureDetector(
                                      onTap: () => upStatus!(
                                          kanbanItem[index].id ?? '',
                                          kanbanItem[index].kanban?.status ??
                                              ''),
                                      child: const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 18,
                                      ),
                                    )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  }),
            ))
          ],
        ));
  }

  MainAxisAlignment get _mainAxis {
    if (kanbanEnum?.value == 'TODO') {
      return MainAxisAlignment.end;
    }
    if (kanbanEnum?.value == 'DONE') {
      return MainAxisAlignment.start;
    }
    return MainAxisAlignment.spaceAround;
  }

  Color realceCard(StatusLimitEnum statusLimit) {
    switch (statusLimit) {
      case StatusLimitEnum.inTheLimit:
        return Colors.green;
      case StatusLimitEnum.limitTime:
        return Colors.yellow;
      case StatusLimitEnum.late:
      default:
        return Colors.red;
    }
  }
}
