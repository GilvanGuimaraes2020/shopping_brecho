import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_drop_down.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_top_down.dart';
import 'package:shopping_brecho/app/module/register_expense/register_expense_controller.dart';

class RegisterExpensePage extends StatefulWidget {
  const RegisterExpensePage({super.key});

  @override
  State<RegisterExpensePage> createState() => _RegisterExpensePageState();
}

class _RegisterExpensePageState extends State<RegisterExpensePage> {
  final controller = Modular.get<RegisterExpenseController>();
  final String itemDrop = 'Categoria';

  @override
  void initState(){
    super.initState();
    controller.init();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar despesa'),
        backgroundColor: BrechoColors.neutral1,
      ),
      body: Column(
        children: [
          BrechoDropDown(
            selectItems: const ['Teste1', 'Teste2', 'Teste3'],
            titleDrop: 'Selecione Categoria',
            onSelectItem: controller.onSelectCategory,
            label: 'Categoria',
          ),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoTextField(
            label: 'Descrição',
            controller: controller.descriptionCtl,
          ),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          Row(
            children: [
              Expanded(
                  child: BrechoTextField(
                label: 'Data',
                controller: controller.dataCtl,
              )),
              const SizedBox(
                width: BrechoSpacing.xvi,
              ),
              Expanded(
                  child: BrechoTextField(
                label: 'Valor',
                controller: controller.priceCtl,
              )),
            ],
          ),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoDropDown(
            selectItems: const ['Teste1', 'Teste2', 'Teste3'],
            titleDrop: 'Teste',
            onSelectItem: controller.onSelectPayType,
            label: 'Tipo pagamento',
          ),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoTextTopDown(
            onTap: controller.setCountPay,
            label: 'Parcelas',
          ),
        ],
      ),
      bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(BrechoSpacing.viii),
          child: MaterialButton(
            onPressed: null,
            child: Text('Salvar'),
          )),
    );
  }
}
