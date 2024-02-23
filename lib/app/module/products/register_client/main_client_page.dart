import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_bottom_sheet.dart';
import 'package:shopping_brecho/app/component/brecho_empty_state.dart';
import 'package:shopping_brecho/app/component/brecho_shimmer.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/module/products/register_client/main_client_controller.dart';
import 'package:shopping_brecho/app/utils/modal_dialog/modal_dialog.dart';

class MainClientPage extends StatefulWidget {
  const MainClientPage({super.key});

  @override
  State<MainClientPage> createState() => _MainClientPageState();
}

class _MainClientPageState extends State<MainClientPage> {
  final controller = Modular.get<MainClientController>();

  @override
  void initState() {
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
        actions: [
          IconButton(
              onPressed: () => Modular.to.pushNamed(AppRoute.registerClient),
              icon: const Icon(Icons.tune)),
          IconButton(
              onPressed: () => Modular.to.pushNamed(AppRoute.registerClient),
              icon: const Icon(Icons.add_circle))
        ],
      ),
      body: Observer(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(BrechoSpacing.xvi),
          child: CustomScrollView(slivers: [
            const SliverPadding(
                padding: EdgeInsets.only(bottom: BrechoSpacing.xvi),
                sliver: SliverToBoxAdapter(
                  child: Text('Ultimas vendas'),
                )),
            SliverToBoxAdapter(
                child: _ClientCard(
              customerState: controller.customer,
            ))
          ]),
        );
      }),
    );
  }
}

class _ClientCard extends StatelessWidget {
  final FreezedStatus<List<CustomerModel>> customerState;
  const _ClientCard({required this.customerState});

  Widget _showFilter() {
    return BrechoBottomSheet(
      title: 'Detalhes cliente',
      body: Column(
        children: [
          const Text('cliente').bodyMediumRegular(),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          const Text('Endereço').bodyMediumRegular(),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          const Text('Telefone').bodyMediumRegular(),
          const SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return customerState.maybeWhen(
        data: (data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: data
                .map((e) => Padding(
                      padding: const EdgeInsets.only(bottom: BrechoSpacing.xvi),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: BrechoColors.primaryBlue8,
                            borderRadius:
                                BorderRadius.circular(BrechoSpacing.xvi)),
                        child: InkWell(
                          onDoubleTap: () async =>
                              BrechoDialog.showModalBottomSheet(
                                  context: context,
                                  builder: (context) => _showFilter()),
                          child: SizedBox(
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: BrechoSpacing.xvi),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.person),
                                  const SizedBox(
                                    width: BrechoSpacing.xvi,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(e.name ?? ''),
                                      const SizedBox(
                                        height: BrechoSpacing.iv,
                                      ),
                                      Text(e.address ?? ''),
                                    ],
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(FormatHelper.formatPhone(e.phone)),
                                  const SizedBox(
                                    width: BrechoSpacing.vi,
                                  ),
                                  const Icon(Icons.whatsapp)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          );
        },
        error: (error) => BrechoEmptyState(
            title: 'Ops',
            description: 'Sem dados para exibir.',
            buttonTitle: 'Tentar novamente',
            onPressed: () {}),
        loading: () => const BrechoShimmer(
            child: BrechoShimmerContainer(width: 300, height: 200)),
        orElse: () => const SizedBox.shrink());
  }
}
