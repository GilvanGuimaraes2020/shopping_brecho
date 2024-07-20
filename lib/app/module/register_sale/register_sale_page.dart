import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:postgres/postgres.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/brecho_snackbar.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/module/products/component/add_payment_widget.dart';
import 'package:shopping_brecho/app/module/products/register_client/register_client_page.dart';
import 'package:shopping_brecho/app/module/register_sale/register_sale_controller.dart';

class RegisterSalePage extends StatefulWidget {
  final ProductStockListModel stockListModel;
  const RegisterSalePage({super.key, required this.stockListModel});

  @override
  State<RegisterSalePage> createState() => _RegisterSalePageState();
}

class _RegisterSalePageState extends State<RegisterSalePage> {
  final controller = Modular.get<RegisterSaleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Realizar venda').labelMediumRegular(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: BrechoSpacing.xvi),
            child: BrechoIconButton(
                icon: BrechoIcons.person_add,
                onPressed: () => Modular.to.push(MaterialPageRoute(
                    builder: (context) => RegisteClientPage()))),
          )
        ],
      ),
      body: Observer(builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: BrechoSpacing.xxiv),
          child: CustomScrollView(slivers: [
            const SliverPadding(
              padding: EdgeInsets.only(top: BrechoSpacing.xxiv),
              sliver: _Label(
                label: 'Dados do produto',
              ),
            ),
            _ProductData(
              model: widget.stockListModel.model ?? '',
              categoryName: widget.stockListModel.categoryName ?? '',
              brand: widget.stockListModel.brandName ?? '',
              price: widget.stockListModel.buyPrice ?? '',
              purchasedAt: widget.stockListModel.purchasedAt.toString(),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(top: BrechoSpacing.xxiv),
              sliver: _Label(
                label: 'Dados da venda',
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(
                    child: BrechoSelectModalField(
                      onSelectItem: controller.onSelectSaleClient,
                      showFilterBox: true,
                      asyncItems: controller.getClients,
                      selectItems:
                          controller.buyAndSaleStore.customerSelectItems,
                      selectTitle: 'Escolha o cliente',
                      label: 'Escolha o cliente',
                      autovalidate: controller.clientIsValid,
                      validator: controller.validateClient,
                      autoValidateAlways: controller.autoValidateAlways,
                    ),
                  ),
                  const SizedBox(width: BrechoSpacing.viii),
                  Expanded(
                    child: BrechoTextField(
                      controller: MaskedTextController(mask: '00/00/0000'),
                      label: 'Data',
                      onChanged: controller.registerSaleOnChangeDate,
                      textInputType: TextInputType.number,
                      autovalidate: controller.dateIsValid,
                      validator: controller.validateDate,
                      autoValidateAlways: controller.autoValidateAlways,
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: BrechoSpacing.xvi),
              sliver: SliverToBoxAdapter(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: BrechoColors.neutral9,
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(BrechoSpacing.xii),
                    child: AddPaymentWidget(
                      selectItems: controller.buyAndSaleStore.paymentTypeNames,
                      onSelect: controller.onUpdatePaymentType,
                      onValidation: (p0) => controller.paymentIsValid = p0,
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: BrechoSpacing.xvi),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Observação',
                  maxLines: 5,
                  controller: controller.customerObservationCtl,
                  onChanged: controller.setOnChangeCustomerObservation,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: BrechoSpacing.clx,
              ),
            )
          ]),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: MediaQuery.of(context).viewInsets.bottom <= 0
          ? BrechoFloatingDock(children: [
              Expanded(
                  child: BrechoSecondaryButton(
                      label: 'Cancelar', onPressed: () => Modular.to.pop())),
              const SizedBox(
                width: BrechoSpacing.xvi,
              ),
              Expanded(
                child: BrechoPrimaryButton(
                    label: 'Enviar',
                    isLoading: controller.simulationIsLoading,
                    onPressed: () async {
                      if (controller.formIsValid) {
                        final result = await controller.saveSale();
                        result.maybeWhen(success: (data) {
                          Modular.to.pop();
                          Modular.to.pop(result);
                        }, error: (error) {
                          String text = '';
                          if (error is PostgreSQLException) {
                            text = error.message ?? '';
                          } else {
                            text = 'Ocorreu um erro no banco!';
                          }
                          HenrySnackbar.show(
                              text: text, status: HenrySnackbarStatus.error);
                        }, orElse: () {
                          HenrySnackbar.show(
                              text: 'Ocorreu algum erro!',
                              status: HenrySnackbarStatus.warning);
                        });
                      } else {
                        HenrySnackbar.show(
                            text: 'Há dados invalidos!',
                            status: HenrySnackbarStatus.error);
                      }
                    }),
              )
            ])
          : null,
    );
  }
}

class _ProductData extends StatelessWidget {
  final String model;
  final String categoryName;
  final String brand;
  final String purchasedAt;
  final String price;

  const _ProductData({
    required this.model,
    required this.categoryName,
    required this.brand,
    required this.purchasedAt,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          _LabelValue(label: 'Categoria', value: categoryName),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _LabelValue(label: 'Modelo', value: model),
              _LabelValue(label: 'Marca', value: brand),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _LabelValue(
                  label: 'Data compra',
                  value: FormatHelper.formatDDMMYYYY(purchasedAt)),
              _LabelValue(label: 'Valor', value: price),
            ],
          ),
          const SizedBox(
            height: BrechoSpacing.xvi,
          )
        ],
      ),
    );
  }
}

class _LabelValue extends StatelessWidget {
  final String label;
  final String value;
  const _LabelValue({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.viii),
      child: Row(
        children: [
          Text('$label: ').labelSmallSemiBold(),
          Text(value).labelSmallRegular()
        ],
      ),
    );
  }
}

class _Label extends StatelessWidget {
  final String label;
  const _Label({required this.label});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.viii),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label).labelLargeSemiBold().color(BrechoColors.monoBlack),
            const Divider()
          ],
        ),
      ),
    );
  }
}
