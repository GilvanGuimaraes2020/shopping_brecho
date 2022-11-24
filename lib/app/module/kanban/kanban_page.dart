import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: BrechoColors.neutral10,
        child: CustomScrollView(slivers: [
          SliverAppBar.large(
            title: const Text('Tarefas'),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [ToDoPage(), DoningPage(), DonePage()],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.maxFinite,
      padding: const EdgeInsets.all(BrechoSpacing.vi),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(BrechoSpacing.vi)),
          color: BrechoColors.neutral5),
      child: Column(
        children: const [
          SizedBox(
            child: Text('Todo'),
          )
        ],
      ),
    );
  }
}

class DonePage extends StatefulWidget {
  const DonePage({super.key});

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.maxFinite,
      padding: const EdgeInsets.all(BrechoSpacing.vi),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(BrechoSpacing.vi)),
          color: BrechoColors.neutral5),
      child: Column(
        children: const [
          SizedBox(
            child: Text('Done'),
          )
        ],
      ),
    );
  }
}

class DoningPage extends StatefulWidget {
  const DoningPage({super.key});

  @override
  State<DoningPage> createState() => _DoningPageState();
}

class _DoningPageState extends State<DoningPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.maxFinite,
      padding: const EdgeInsets.all(BrechoSpacing.vi),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(BrechoSpacing.vi)),
          color: BrechoColors.neutral5),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: BrechoSpacing.vi),
            child: SizedBox(
              child: Text('Doning'),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        TasksCard(),
                        const Divider(),
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}

class TasksCard extends StatelessWidget {
  // const TasksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BrechoSpacing.x),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(BrechoSpacing.x)),
          color: BrechoColors.neutral8),
      child: Column(
        children: [
          const Text('Titulo').h1Thin(),
          Row(
            children: [
              const Text('Criação').h1Thin(),
              const Expanded(child: SizedBox()),
              const Text('Finalização').h1Thin()
            ],
          ),
          const Text('Descrição').h1Thin(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  debugPrint('left');
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 12,
                ),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint('rigth');
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
