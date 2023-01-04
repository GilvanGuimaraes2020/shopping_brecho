import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_drop_down.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_top_down.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';
import 'package:shopping_brecho/app/module/register_expense/register_expense_controller.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class RegisterExpensePage extends StatefulWidget {
  const RegisterExpensePage({super.key});

  @override
  State<RegisterExpensePage> createState() => _RegisterExpensePageState();
}

class _RegisterExpensePageState extends State<RegisterExpensePage> {
  final controller = Modular.get<RegisterExpenseController>();
  final String itemDrop = 'Categoria';

  @override
  void initState() {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: BrechoSpacing.xvi, horizontal: BrechoSpacing.viii),
          child: Column(
            children: [
              BrechoDropDown(
                selectItems: controller.categoryNames,
                titleDrop: 'Selecione Categoria',
                onSelectItem: controller.setCategoryModel,
                label: 'Categoria',
                validator: controller.validateCategory,
                autovalidate: controller.categoryIsValid,
                autoValidateAlways: controller.autoValidateAlways,
              ),
              const SizedBox(
                height: BrechoSpacing.xvi,
              ),
              BrechoTextField(
                label: 'Descrição',
                onChanged: controller.setDescription,
                controller: controller.descriptionCtl,
                validator: controller.validateDescription,
                autovalidate: controller.descriptionIsvalid,
                autoValidateAlways: !controller.autoValidateAlways,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(
                height: BrechoSpacing.xvi,
              ),
              Row(
                children: [
                  Expanded(
                      child: BrechoTextField(
                    label: 'Data',
                    controller: controller.buyDateCtl,
                    onChanged: controller.setBuyDate,
                    validator: controller.validateDate,
                    autovalidate: controller.dateIsValid,
                    autoValidateAlways: controller.autoValidateAlways,
                  )),
                  const SizedBox(
                    width: BrechoSpacing.xvi,
                  ),
                  Expanded(
                      child: BrechoTextField(
                    label: 'Valor',
                    controller: controller.priceCtl,
                    onChanged: controller.setPrice,
                    prefixText: 'R\$',
                    isMoneyMaskedTextController: true,
                  )),
                ],
              ),
              const SizedBox(
                height: BrechoSpacing.xvi,
              ),
              BrechoDropDown(
                selectItems: controller.paymentTypeNames,
                titleDrop: 'Tipo pagamento',
                onSelectItem: controller.setPaymentType,
                label: 'Tipo pagamento',
                validator: controller.validatePaymentType,
              ),
              const SizedBox(
                height: BrechoSpacing.xvi,
              ),
              BrechoTextTopDown(
                onTap: controller.setinstallment,
                label: 'Parcelas',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(BrechoSpacing.viii),
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(BrechoSpacing.viii),
                color: BrechoColors.primaryBlue5),
            child: MaterialButton(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              onPressed: () async {
                late String text;
                late BrechoSnackbarStatus status;
                controller.setAutoValidateAlways(true);
                if (controller.formIsValid) {
                  final result = await controller.saveData();
                  if (result is RequestStatusSuccess) {
                  Modular.to.pop();
                    text = 'Salvo com sucesso!';
                    status = BrechoSnackbarStatus.success;
                  } else {
                    text = 'Não foi possivel salvar!';
                    status = BrechoSnackbarStatus.error;
                  }
                } else {
                  text = 'Dados invalidos!';
                  status = BrechoSnackbarStatus.error;
                }
                BrechoSnackbar.show(text: text, brechoSnackbarStatus: status);
              },
              child: const Text('Salvar'),
            ),
          )),
    );
  }
}
