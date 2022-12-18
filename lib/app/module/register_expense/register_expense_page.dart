import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar despesa'),
        backgroundColor: BrechoColors.neutral1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(BrechoSpacing.x),
        child: Column(
          children: [
            DropdownButton(
              items: <String>['Categoria', 'teste', 'test'].map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              isExpanded: true,
              onChanged: controller.setDropValue,
              value: itemDrop,
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
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
