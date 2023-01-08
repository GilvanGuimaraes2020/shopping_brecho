import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/badge.dart';
import 'package:shopping_brecho/app/core/models/registers_model/registers_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/module/homepage/component/card_detail_account.dart';
import 'package:shopping_brecho/app/module/homepage/home_controller.dart';
import 'package:shopping_brecho/app/utils/modal_dialog/modal_dialog.dart';

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
            /*  const SliverPadding(
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
                                        BrechoIcons.warning,
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
            ), */
            const SliverPadding(
              padding: EdgeInsets.symmetric(vertical: BrechoSpacing.viii),
              sliver: SliverToBoxAdapter(
                  child: Center(child: Text('Registro de contas'))),
            ),
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
                          controller.accountRegisterModel.length,
                          (index) => InkWell(
                                onTap: () {
                                  _showModal(
                                      controller.accountRegisterModel[index]
                                          .registers,
                                      controller.accountRegisterModel[index]
                                          .typeName);
                                },
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(controller.categories
                                                  ?.firstWhere((element) =>
                                                      controller
                                                          .accountRegisterModel[
                                                              index]
                                                          .typeName ==
                                                      element.value)
                                                  .label ??
                                              ''),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Text(
                                                  '${controller.accountRegisterModel[index].registers!.length} registro'),
                                              const Icon(Icons.remove_red_eye),
                                            ],
                                          ),
                                        ),
                                        Text(
                                            'R\$: ${controller.totalCategory[index]}')
                                      ],
                                    ),
                                    const Divider(),
                                  ],
                                ),
                              )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Expanded(child: SizedBox()),
                          const Text('Valor total pago: '),
                          Badge(child: controller.registersTotal ?? ''),
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

  void _showModal(List<RegistersModel>? registers, String? typeName) {
    final String? detailAccount = controller.categories
        ?.firstWhere((element) => element.value == typeName)
        .label;
    final List<double?> accountValue =
        registers?.map((e) => e.accountValue).toList() ?? [];
    final double? maxValue = accountValue
        .reduce((value, element) => value! > element! ? value : element);
    BrechoDialog.showModalBottomSheet(
        context: context,
        builder: (context) {
          return Material(
            color: BrechoColors.monoWhite,
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(vertical: BrechoSpacing.viii),
                  sliver: SliverToBoxAdapter(
                    child: Center(
                        child: Text('Detalhamento $detailAccount')
                            .bodyMediumBold()),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: BrechoSpacing.viii),
                  sliver: SliverList(
                      delegate: SliverChildListDelegate(List.generate(
                          registers?.length ?? 0,
                          (index) => CardDetailAccount(
                                detail: registers?[index].movementDetail,
                                buyDate: registers?[index].date,
                                price:
                                    registers?[index].accountValue.toString(),
                                isBigger:
                                    registers?[index].accountValue == maxValue,
                                typeName: typeName,
                              )))),
                )
              ],
            ),
          );
        });
  }
}
