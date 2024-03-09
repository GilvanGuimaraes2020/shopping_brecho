import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/component/progress_hud.dart';
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
  void initState() {
    super.initState();
    controller.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ProgressHud(
        isLoading: controller.buyAndSaleProductStore.isLoading,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Registrar produto'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(BrechoSpacing.xxiv),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BrechoSelectModalField(
                      selectTitle: 'Selecione a categoria do produto',
                      label: 'Selecione a categoria do produto',
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
                    label: 'Selecione a categoria da idade',
                    selectItems: controller.oldCategoryName,
                    multiple: true,
                    validator: controller.validateOldCategory,
                    selecteds:
                        controller.buyAndSaleProductStore.oldCategoryIndex,
                    autovalidate: controller.oldCategoryIsValid,
                    autoValidateAlways: controller.autoValidateAlways,
                    onSelectItem: controller.onSelectOldCategory,
                  ),
                  const SizedBox(
                    height: BrechoSpacing.xvi,
                  ),
                  BrechoSelectModalField(
                    selectTitle: 'Selecione a marca',
                    onSelectItem: controller.onSelectBrand,
                    label: 'Selecione a marca',
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
                  const SizedBox(
                    height: BrechoSpacing.clx,
                  )
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: BrechoFloatingDock(
              isVisible: MediaQuery.of(context).viewInsets.bottom == 0,
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
                            String text = 'Adicionado com sucesso!';
                            var status = BrechoSnackbarStatus.success;
                            final result = await controller.addAllProducts();
                            result.maybeWhen(
                                success: (data) => Modular.to.pop(),
                                orElse: () {
                                  text = 'Não foi possivel salvar os dados!';
                                  status = BrechoSnackbarStatus.error;
                                });
                            BrechoSnackbar.show(
                                text: text, brechoSnackbarStatus: status);
                          } else {
                            BrechoSnackbar.show(
                                text: 'Há erro no formulário!',
                                brechoSnackbarStatus:
                                    BrechoSnackbarStatus.error);
                          }
                        })),
              ]),
        ),
      );
    });
  }
}
