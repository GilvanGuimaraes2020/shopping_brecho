import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/badge.dart';
import 'package:shopping_brecho/app/module/homepage/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();

    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Pagina Principal"),
        ),
        body: Observer(builder: (context) {
          return CustomScrollView(slivers: [
            const SliverPadding(
                padding: EdgeInsets.all(BrechoSpacing.viii),
                sliver: SliverToBoxAdapter(
                  child: Center(child: Text("Contas Fixas")),
                )),
            SliverPadding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  padding: const EdgeInsets.all(BrechoSpacing.viii),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: BrechoColors.primaryBlue10),
                  child: Column(
                    children: [
                      ...List.generate(
                          controller.accountAlertList.length,
                          (index) => Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(controller
                                          .accountAlertList[index].account
                                          .toString()),
                                      const Expanded(
                                        child: SizedBox(),
                                      ),
                                      Text(controller
                                          .accountAlertList[index].due
                                          .toString()),
                                      const SizedBox(
                                        width: BrechoSpacing.viii,
                                      ),
                                      const Icon(
                                        Icons.warning,
                                        color: BrechoColors.responseWarning,
                                      )
                                    ],
                                  ),
                                  const Divider(),
                                ],
                              )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Expanded(child: SizedBox()),
                          Text('Valor total pago: '),
                          Badge(child: 'valor total'),
                        ],
                      ),
                    ],
                  ),
                )
              ])),
            )
          ]);
        }));
  }
}
