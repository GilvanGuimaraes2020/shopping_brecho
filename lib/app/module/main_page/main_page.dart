import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/custom_paint.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_page.dart';
import 'package:shopping_brecho/app/module/main_page/main_controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _controller = Modular.get<MainController>();

  final list = [10, 150, 50, 70, 84, 60, 90, 53];

  @override
  void initState() {
    super.initState();
    _controller.init();
  }

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
                    onPressed: () =>
                        Modular.to.pushNamed(AppRoute.registerExpense),
                    child: const Text('Registrar despesa'))),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(BrechoSpacing.vi),
            sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                    onPressed: () => Modular.to.pushNamed(AppRoute.registerBuy),
                    child: const Text('Efetuar compra'))),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(BrechoSpacing.vi),
            sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                    onPressed: () => Modular.to.pushNamed(AppRoute.mainClient),
                    child: const Text('Registrar cliente'))),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: CustomPaint(
                painter: CustomPaintTeste(list),
                child: const ColoredBox(
                    color: Color.fromARGB(25, 158, 158, 158),
                    child: Text('data', textAlign: TextAlign.center)),
              ),
            ),
          )
        ]));
  }
}
