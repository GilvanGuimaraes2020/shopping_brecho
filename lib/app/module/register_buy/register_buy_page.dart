import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_drop_down.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_controller.dart';

class RegisterBuyPage extends StatefulWidget {
  const RegisterBuyPage({super.key});

  @override
  State<RegisterBuyPage> createState() => _RegisterBuyPageState();
}

class _RegisterBuyPageState extends State<RegisterBuyPage> {
  final controller = Modular.get<RegisterBuyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar compra')),
      body: Observer(builder: (context) {
        return controller.client.maybeWhen(
            data: (data) {
              return Column(
                children: [
                  const SizedBox(
                    height: BrechoSpacing.viii,
                  ),
                  BrechoDropDown(
                      onSelectItem: null,
                      label: 'Escolha o cliente',
                      selectItems: controller.titles,
                      titleDrop: 'Escolha o cliente')
                ],
              );
            },
            loading: () => const Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(),
                  ),
                ),
            orElse: () => const SizedBox());
      }),
    );
  }
}
