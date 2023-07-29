import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_drop_down.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_top_down.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_controller.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class RegisterBuyPage extends StatefulWidget {
  const RegisterBuyPage({super.key});

  @override
  State<RegisterBuyPage> createState() => _RegisterBuyPageState();
}

class _RegisterBuyPageState extends State<RegisterBuyPage> {
  final controller = Modular.get<RegisterBuyController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar compra')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: BrechoSpacing.x),
        child: Observer(builder: (_) {
          return controller.product.maybeWhen(
            data: (_) {
              return CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      top: BrechoSpacing.viii,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: BrechoDropDownWithFilter(
                          onSelectItem: controller.onSelectClient,
                          asyncData: controller.getClients,
                          titleDrop: 'Escolha o cliente'),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(top: BrechoSpacing.xvi),
                    sliver: SliverToBoxAdapter(
                      child: BrechoDropDownWithFilter(
                        titles: controller.listProductModel,
                        subtitles: controller.listProductBrand,
                        onSelectItem: controller.onSelectProduct,
                        titleDrop: 'Escolha o produto',
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(top: BrechoSpacing.xvi),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Expanded(
                            child: BrechoTextField(
                              label: 'valor',
                              prefixText: 'R\$ ',
                              textInputType: TextInputType.number,
                              onChanged: controller.onChangePrice,
                            ),
                          ),
                          const SizedBox(width: BrechoSpacing.xvi),
                          Expanded(
                            child: BrechoTextField(
                              controller:
                                  MaskedTextController(mask: '00/00/0000'),
                              label: 'Data',
                              onChanged: controller.onChangePrice,
                              textInputType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(top: BrechoSpacing.xvi),
                    sliver: SliverToBoxAdapter(
                      child: BrechoDropDown(
                          onSelectItem: controller.onSelectPaymentType,
                          label: 'Tipo de pagamento',
                          selectItems: controller.paymentTypeNames,
                          titleDrop: 'Tipo de pagamento'),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(top: BrechoSpacing.xvi),
                    sliver: SliverToBoxAdapter(
                      child: BrechoTextTopDown(
                          label: 'Parcelas',
                          onTap: controller.onTapInstallment),
                    ),
                  )
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
            orElse: () => Container(),
          );
        }),
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
