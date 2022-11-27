import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/models/enums/enum_kanban.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_controller.dart';

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
                          
                        ),
                        TaskItem(
                          kanbanEnum: KanbanEnum.doing,
                          kanbanItem: controller.toDoingList ?? [],
                        ),
                        TaskItem(
                          kanbanEnum: KanbanEnum.done,
                          kanbanItem: controller.toDoneList ?? [],
                        ),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => const SliverToBoxAdapter(
                child: CircularProgressIndicator(),
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
  final Function()? upStatus;
  final Function()? downStatus;
  final List<KanbanItemModel> kanbanItem;

  const TaskItem(
      {super.key,
      this.kanbanEnum,
      required this.kanbanItem,
      this.upStatus,
      this.downStatus});

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
              child: Center(child: Text(kanbanEnum?.label ?? '').h5Thin()),
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
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(BrechoSpacing.x)),
                              color: BrechoColors.neutral8),
                          child: Column(
                            children: [
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Titulo: ',
                                    style: const Text('').h2Medium().style),
                                TextSpan(
                                    text: kanbanItem[index].kanban?.title ??
                                        'Sem dados',
                                    style: const Text('').h2Thin().style)
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
                                        style: const Text('').h2Medium().style),
                                    TextSpan(
                                        text: kanbanItem[index]
                                                .kanban
                                                ?.createDate ??
                                            'Sem dados',
                                        style: const Text('').h2Thin().style)
                                  ])),
                                  const Expanded(child: SizedBox()),
                                  RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: 'Fim: ',
                                        style: const Text('').h2Medium().style),
                                    TextSpan(
                                        text: kanbanItem[index]
                                                .kanban
                                                ?.finishDate ??
                                            'Sem dados',
                                        style: const Text('').h2Thin().style)
                                  ])),
                                ],
                              ),
                              const SizedBox(
                                height: BrechoSpacing.iv,
                              ),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Desc: ',
                                    style: const Text('').h2Medium().style),
                                TextSpan(
                                    text:
                                        kanbanItem[index].kanban?.description ??
                                            'Sem dados',
                                    style: const Text(
                                      '',
                                      maxLines: 3,
                                    ).h2Thin().style)
                              ])),
                              const SizedBox(
                                height: BrechoSpacing.vi,
                              ),
                              Row(
                                mainAxisAlignment: _mainAxis,
                                children: [
                                  if (kanbanEnum?.value != 'TODO')
                                    GestureDetector(
                                      onTap: downStatus,
                                      child: const Icon(
                                        Icons.arrow_back_ios,
                                        size: 18,
                                      ),
                                    ),
                                  if (kanbanEnum?.value != 'DONE')
                                    GestureDetector(
                                      onTap: upStatus,
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
}
