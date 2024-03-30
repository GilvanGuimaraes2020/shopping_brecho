import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/brecho_snackbar.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/module/products/product_list/product_list_controller.dart';

class ProductFilterPage extends StatefulWidget {
  final ProductListController controller;

  const ProductFilterPage({super.key, required this.controller});

  @override
  State<ProductFilterPage> createState() => _ProductFilterPageState();
}

class _ProductFilterPageState extends State<ProductFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtro dos produtos').labelSmallRegular(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: BrechoSpacing.xxiv),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(top: BrechoSpacing.xxiv),
              sliver: SliverToBoxAdapter(
                child: BrechoSelectModalField(
                  selectTitle: 'Selecione',
                  label: 'Selecione',
                  selectItems:
                      widget.controller.saleType.map((e) => e.label).toList(),
                  onSelectItem: widget.controller.onSelectSale,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.xvi),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Data inicial',
                  controller: MaskedTextController(mask: '00/00/0000'),
                  onChanged: widget.controller.onChangeStartDate,
                  textInputType: TextInputType.number,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BrechoTextField(
                label: 'Data final',
                textInputType: TextInputType.number,
                controller: MaskedTextController(mask: '00/00/0000'),
                onChanged: widget.controller.onChangeFinishDate,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: BrechoSpacing.clx,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BrechoFloatingDock(children: [
        Expanded(
          child: BrechoSecondaryButton(
            label: 'Cancelar',
            onPressed: () => Modular.to.pop(),
          ),
        ),
        const SizedBox(
          width: BrechoSpacing.xvi,
        ),
        Expanded(
          child: BrechoPrimaryButton(
            label: 'Aplicar',
            onPressed: () {
              if (widget.controller.formIsValid) {
                widget.controller.applyFilters();
                Modular.to.pop(widget.controller.filters);
              } else {
                HenrySnackbar.show(
                    text: 'Há campos invalidos!',
                    status: HenrySnackbarStatus.error);
              }
            },
          ),
        )
      ]),
    );
  }
}
