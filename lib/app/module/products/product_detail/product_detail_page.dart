import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/badge.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_shimmer.dart';
import 'package:shopping_brecho/app/core/models/product_pendency_table/product_pendency_table_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/module/products/component/pendency_list_widget.dart';
import 'package:shopping_brecho/app/module/products/product_detail/product_detail_controller.dart';
import 'package:shopping_brecho/app/utils/modal_dialog/modal_dialog.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductStockListModel stockListModel;
  const ProductDetailPage({
    super.key,
    required this.stockListModel,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final controller = Modular.get<ProductDetailController>();

  @override
  void initState() {
    super.initState();
    controller.init(id: widget.stockListModel.productStockId!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Detalhes do produto').labelMediumRegular()),
      body: Padding(
        padding: const EdgeInsets.all(BrechoSpacing.xxiv),
        child: Observer(builder: (context) {
          return CustomScrollView(
            slivers: [
              const _Label(label: 'Cliente'),
              _ClientData(
                name: widget.stockListModel.name ?? '',
                address: widget.stockListModel.address ?? '',
                phone: widget.stockListModel.phone ?? '',
                number: widget.stockListModel.number.toString(),
              ),
              const _Label(label: 'Produto'),
              _ProductData(
                model: widget.stockListModel.model ?? '',
                categoryName: widget.stockListModel.categoryName ?? '',
                brand: widget.stockListModel.brandName ?? '',
                price: widget.stockListModel.price ?? '',
                purchasedAt: widget.stockListModel.purchasedAt.toString(),
              ),
              const _Label(label: 'Pendencia'),
              _Pendency(
                isLoading: controller.pendencyIsLoading,
                pendencies: controller.productPendencyTableList,
                onTap: () async {
                  final result = await BrechoDialog.showModalBottomSheet(
                      context: context,
                      builder: (context) => PendencyListWidget(
                            pendencies: controller.pendencies,
                            onSelectPendency: controller.onSelectPendency,
                          )) as bool?;
                  if (result ?? false) {
                    String text = 'Adicionado pendência com sucesso!';
                    var status = BrechoSnackbarStatus.success;
                    final value = await controller.addPendency();
                    value.maybeWhen(
                        success: (data) => Modular.to.pop(),
                        empty: () {
                          text = 'Lista de pendencia vazia';
                          status = BrechoSnackbarStatus.warning;
                        },
                        orElse: () {
                          text = 'Ocorreu algum erro!';
                          status = BrechoSnackbarStatus.error;
                        });
                    BrechoSnackbar.show(
                        text: text, brechoSnackbarStatus: status);
                  }
                },
              )
            ],
          );
        }),
      ),
    );
  }
}

class _Pendency extends StatelessWidget {
  final bool isLoading;
  final Function() onTap;
  final List<ProductPendencyTableModel> pendencies;
  const _Pendency(
      {this.isLoading = false, required this.onTap, required this.pendencies});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(children: [
        if (isLoading)
          Wrap(
            spacing: BrechoSpacing.vi,
            children: List.generate(4,
                (index) => const BrechoShimmerContainer(width: 50, height: 20)),
          )
        else
          Wrap(
              spacing: BrechoSpacing.vi,
              children: List.generate(
                  pendencies.length,
                  (index) =>
                      Badge(child: pendencies[index].pendencyName ?? ''))),
        const SizedBox(
          height: BrechoSpacing.xvi,
        ),
        BrechoPrimaryButton(
          label: 'Adicionar',
          onPressed: onTap,
          prependIcon: BrechoIcons.add,
        )
      ]),
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

class _ClientData extends StatelessWidget {
  final String name;
  final String address;
  final String number;
  final String phone;

  const _ClientData({
    required this.name,
    required this.address,
    required this.number,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          _LabelValue(label: 'Nome', value: name),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _LabelValue(label: 'Endereço', value: address),
              _LabelValue(label: 'Número', value: number),
            ],
          ),
          _LabelValue(
              label: 'Telefone', value: FormatHelper.formatPhone(phone)),
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
