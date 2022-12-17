import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_page.dart';
import 'package:shopping_brecho/app/module/register_expense/register_expense_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(BrechoSpacing.vi),
            sliver: SliverToBoxAdapter(
              child: ElevatedButton(
                  onPressed: () {
                    Modular.to.push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: const Text('Ir para Home')),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(BrechoSpacing.vi),
            sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                    onPressed: () => Modular.to.push(MaterialPageRoute(
                        builder: (context) => const KanbanPage())),
                    child: const Text('Ir para Kanban'))),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(BrechoSpacing.vi),
            sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                    onPressed: () => Modular.to.push(MaterialPageRoute(
                        builder: (context) => const RegisterExpensePage())),
                    child: const Text('Registrar despesa'))),
          )
        ]));
  }
}
