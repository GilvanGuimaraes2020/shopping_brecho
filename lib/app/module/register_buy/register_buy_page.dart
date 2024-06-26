import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_checkbox.dart';
import 'package:shopping_brecho/app/component/brecho_expansion_tile.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_top_down.dart';
import 'package:shopping_brecho/app/component/progress_hud.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/module/products/register_client/register_client_page.dart';
import 'package:shopping_brecho/app/module/products/register_product/register_product_page.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_controller.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class RegisterBuyPage extends StatefulWidget {
  const RegisterBuyPage({super.key});

  @override
  State<RegisterBuyPage> createState() => _RegisterBuyPageState();
}

class _RegisterBuyPageState extends State<RegisterBuyPage> {
  final controller = Modular.get<RegisterBuyController>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.loadData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ProgressHud(
        isLoading: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Registrar compra'),
            actions: [
              IconButton(
                  onPressed: () => Modular.to.push(MaterialPageRoute(
                      builder: (context) => RegisteClientPage())),
                  icon: const Icon(BrechoIcons.person_add)),
              IconButton(
                  onPressed: () => Modular.to.push(MaterialPageRoute(
                      builder: (context) => const RegisterProductPage())),
                  icon: const Icon(BrechoIcons.add_box))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: BrechoSpacing.xvi),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: BrechoSpacing.viii,
                  ),
                  BrechoSelectModalField(
                    onSelectItem: controller.onSelectClient,
                    showFilterBox: true,
                    asyncItems: controller.getClients,
                    selectItems: controller.buyAndSaleStore.customerSelectItems,
                    selectTitle: 'Escolha o cliente',
                    label: 'Escolha o cliente',
                    autovalidate: controller.clientIsValid,
                    validator: controller.validateClient,
                    autoValidateAlways: controller.autoValidateAlways,
                  ),
                  const SizedBox(height: BrechoSpacing.xvi),
                  BrechoSelectModalField(
                    onSelectItem: controller.registerBuySelectProduct,
                    selectItems: controller.buyAndSaleStore.productsSelectItems,
                    label: 'Escolha o produto',
                    selectTitle: 'Escolha o produto',
                    validator: controller.validateProduct,
                    autovalidate: controller.productIsValid,
                    autoValidateAlways: controller.autoValidateAlways,
                  ),
                  const SizedBox(height: BrechoSpacing.xvi),
                  BrechoTextField(
                    label: 'Cor',
                    onChanged: controller.setProductColor,
                  ),
                  const SizedBox(height: BrechoSpacing.xvi),
                  BrechoSelectModalField(
                    onSelectItem: controller.registerBuySetPaymentType,
                    label: 'Tipo de pagamento',
                    selectItems: controller.buyAndSaleStore.paymentTypeNames,
                    selectTitle: 'Tipo de pagamento',
                    autovalidate: controller.paymentTypeIsValid,
                    validator: controller.validatePaymentType,
                    autoValidateAlways: controller.autoValidateAlways,
                  ),
                  const SizedBox(height: BrechoSpacing.xvi),
                  if (controller.buyAndSaleStore.isCreditCard) ...{
                    BrechoTextTopDown(
                        label: 'Parcelas',
                        onTap: controller.buyAndSaleStore.onTapInstallment),
                    const SizedBox(height: BrechoSpacing.xvi),
                  },
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: BrechoTextField(
                          label: 'valor',
                          prefixText: 'R\$ ',
                          textInputType: TextInputType.number,
                          onChanged: controller.onChangePrice,
                          validator: controller.validatePrice,
                          autovalidate: controller.productIsValid,
                          autoValidateAlways: controller.autoValidateAlways,
                        ),
                      ),
                      const SizedBox(width: BrechoSpacing.xvi),
                      Expanded(
                        child: BrechoTextField(
                          controller: MaskedTextController(mask: '00/00/0000'),
                          label: 'Data',
                          onChanged: controller.registerBuyOnChangeDate,
                          textInputType: TextInputType.number,
                          autovalidate: controller.dateIsValid,
                          validator: controller.validateDate,
                          autoValidateAlways: controller.autoValidateAlways,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: BrechoSpacing.xii,
                  ),
                  controller.productPendencyAll.maybeWhen(
                      data: (data) {
                        return BrechoExpansionTile(
                            leading: const Text('Pendências (não obrigátorio)')
                                .labelMediumRegular(),
                            contentPadding: EdgeInsets.zero,
                            child: Column(
                              children: data
                                  .map((e) => _PendencyItem(
                                      id: e.id!,
                                      label: e.pendencyName ?? '',
                                      onSelectPendency:
                                          controller.onSelectPendency,
                                      isSelected: controller.pendencySelecteds
                                          .contains(e.id)))
                                  .toList(),
                            ));
                      },
                      orElse: () => const SizedBox.shrink()),
                  const SizedBox(height: BrechoSpacing.clx)
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
                  label: 'Salvar',
                  onPressed: () async {
                    late String text;
                    late BrechoSnackbarStatus status;
                    controller.setAutoValidateAlways(false);
                    if (controller.formIsValid) {
                      final result = await controller.saveProductStock();
                      if (result is FreezedStatusSuccess) {
                        Modular.to.pop(result);
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
                    BrechoSnackbar.show(
                        text: text, brechoSnackbarStatus: status);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class _PendencyItem extends StatelessWidget {
  final bool isSelected;
  final int id;
  final String label;
  final Function(int) onSelectPendency;

  const _PendencyItem(
      {required this.id,
      required this.label,
      required this.isSelected,
      required this.onSelectPendency});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelectPendency.call(id),
      child: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: BrechoColors.neutral8,
        ))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.xvi),
          child: Row(
            children: [
              IgnorePointer(
                child: BrechoCheckbox(
                  value: isSelected,
                  onChanged: (p0) {},
                ),
              ),
              const SizedBox(
                width: BrechoSpacing.vi,
              ),
              Text(label).labelExtraSmallMedium()
            ],
          ),
        ),
      ),
    );
  }
}
