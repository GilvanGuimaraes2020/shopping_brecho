import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/module/products/register_product/register_product_controller.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class RegisterProductPage extends StatefulWidget {
  const RegisterProductPage({super.key});

  @override
  State<RegisterProductPage> createState() => _RegisterProductPageState();
}

class _RegisterProductPageState extends State<RegisterProductPage> {
  final controller = Modular.get<RegisterProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(BrechoSpacing.xxiv),
        child: Column(
          children: [
            BrechoSelectModalField(
                selectTitle: 'Selecione a categoria do produto',
                label: 'Selecione a categoria',
                selectItems: controller.productCategoryName,
                validator: controller.validateProductCategory,
                autovalidate: controller.productCategoryIsValid,
                autoValidateAlways: controller.autoValidateAlways,
                onSelectItem: controller.onSelectProductCategory),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoSelectModalField(
              selectTitle: 'Selecione a categoria da idade',
              label: 'Selecione a categoria',
              selectItems: controller.oldCategoryName,
              validator: controller.validateOldCategory,
              autovalidate: controller.oldCategoryIsValid,
              autoValidateAlways: controller.autoValidateAlways,
              onSelectItem: controller.onSelectOldCategory,
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoSelectModalField(
              selectTitle: 'Selecione o modelo',
              onSelectItem: controller.onSelectBrand,
              label: 'Selecione a categoria',
              selectItems: controller.brandNames,
              validator: controller.validateBrand,
              autovalidate: controller.brandIsValid,
              autoValidateAlways: controller.autoValidateAlways,
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoTextField(
              label: 'Modelo',
              controller: controller.productModelCtl,
              onChanged: controller.onChangeModel,
              validator: controller.validateModel,
              autovalidate: controller.modelIsValid,
              autoValidateAlways: controller.autoValidateAlways,
            ),
          ],
        ),
      ),
      floatingActionButton: BrechoFloatingDock(children: [
        Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: BrechoOutlineButton(
                        label: 'Cancelar', onPressed: () => Modular.to.pop())),
                const SizedBox(
                  width: BrechoSpacing.xvi,
                ),
                Expanded(
                    child: BrechoPrimaryButton(
                        label: 'Adicionar',
                        onPressed: () async {
                          controller.autoValidateAlways = false;
                          if (controller.formIsValid) {
                            await controller.addProductList();
                            BrechoSnackbar.show(
                                text: 'Adicionado com sucesso!',
                                brechoSnackbarStatus:
                                    BrechoSnackbarStatus.success);
                          } else {
                            BrechoSnackbar.show(
                                text: 'Há erro no formulário!',
                                brechoSnackbarStatus:
                                    BrechoSnackbarStatus.error);
                          }
                        }))
              ],
            ),
            const SizedBox(
              height: BrechoSpacing.xii,
            ),
            Row(
              children: [
                Expanded(
                  child: BrechoPrimaryButton(
                      label:
                          'Enviar p/ banco ${controller.countDataForDatabase}',
                      onPressed:
                          controller.countDataForDatabase > 0 ? () async{
                            await controller.addAllProducts();
                          } : null),
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
