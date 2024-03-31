import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/brecho_snackbar.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/module/products/product_list/product_list_controller.dart';

class ProductFilterPage extends StatelessWidget {
  final ProductListController controller;

  const ProductFilterPage({super.key, required this.controller});

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
                  controller: controller.isSoldCtl,
                  selectItems: controller.saleType.map((e) => e.label).toList(),
                  onSelectItem: controller.onSelectSale,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.xvi),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Data inicial',
                  controller: controller.filterStartDateCtl,
                  onChanged: controller.onChangeStartDate,
                  textInputType: TextInputType.number,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BrechoTextField(
                label: 'Data final',
                textInputType: TextInputType.number,
                controller: controller.filterEndDateCtl,
                onChanged: controller.onChangeFinishDate,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: BrechoSpacing.xxiv),
              sliver: SliverToBoxAdapter(
                child: BrechoSelectModalField(
                  selectTitle: 'Categoria',
                  label: 'Categoria',
                  controller: controller.categoryCtl,
                  selectItems:
                      controller.categoryBy.map((e) => e.label).toList(),
                  onSelectItem: controller.onSelectCategory,
                ),
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
              if (controller.formIsValid) {
                controller.applyFilters();
                Modular.to.pop(controller.filters);
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
