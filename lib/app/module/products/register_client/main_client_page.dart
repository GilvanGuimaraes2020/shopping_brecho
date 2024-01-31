import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_bottom_sheet.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/utils/modal_dialog/modal_dialog.dart';

class MainClientPage extends StatefulWidget {
  const MainClientPage({super.key});

  @override
  State<MainClientPage> createState() => _MainClientPageState();
}

class _MainClientPageState extends State<MainClientPage> {
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
      body: Padding(
        padding: const EdgeInsets.all(BrechoSpacing.xvi),
        child: CustomScrollView(slivers: [
          const SliverPadding(
              padding: EdgeInsets.only(bottom: BrechoSpacing.xvi),
              sliver: SliverToBoxAdapter(
                child: Text('5 ultimas vendas'),
              )),
          ...List.generate(
              4,
              (index) => const SliverToBoxAdapter(
                    child: _ClientCard(),
                  )),
        ]),
      ),
    );
  }
}

class _ClientCard extends StatelessWidget {
  const _ClientCard();

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
    return Padding(
      padding: const EdgeInsets.only(bottom: BrechoSpacing.xvi),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: BrechoColors.primaryBlue8,
            borderRadius: BorderRadius.circular(BrechoSpacing.xvi)),
        child: InkWell(
          onDoubleTap: () async => BrechoDialog.showModalBottomSheet(
              context: context, builder: (context) => _showFilter()),
          child: SizedBox(
            height: 70,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: BrechoSpacing.xvi),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.person),
                  const SizedBox(
                    width: BrechoSpacing.xvi,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('cliente'),
                      SizedBox(
                        height: BrechoSpacing.iv,
                      ),
                      Text('endereço'),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  const Text('169999999'),
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
    );
  }
}
