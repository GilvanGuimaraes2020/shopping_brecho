import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_controller.dart';

class FilterCardWidget extends StatelessWidget {
  final KanbanController? controller;
  const FilterCardWidget({super.key, this.controller});

  // bool lowFilterValue = false;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Material(
        borderRadius: BorderRadius.circular(BrechoSpacing.x),
        child: ColoredBox(
          color: BrechoColors.secondaryBlue10,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.xx),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: const Text("Filtrar card").h2MediumBold(),
                  backgroundColor: BrechoColors.monoWhite,
                  leading: GestureDetector(
                    onTap: () => Modular.to.pop(),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: BrechoColors.monoBlack,
                    ),
                  ),
                  centerTitle: true,
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                      top: BrechoSpacing.xx,
                      right: BrechoSpacing.xx,
                      left: BrechoSpacing.xx),
                  sliver: SliverToBoxAdapter(
                    child: TextField(
                      onChanged: controller?.setKeyWord,
                      decoration: InputDecoration(
                          label: const Text('Responsavel'),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(BrechoSpacing.x))),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(BrechoSpacing.xx),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Pendências').h4Medium(),
                        CheckboxListTile(
                          value: controller?.lowFilterValue,
                          onChanged: (value) => controller?.setLow(value),
                          title: const Text('LOW'),
                        ),
                        CheckboxListTile(
                          value: controller?.mediumFilterValue,
                          onChanged: (value) {
                            HapticFeedback.heavyImpact();
                            controller?.setMedium(value);
                          },
                          title: const Text('MEDIUM'),
                        ),
                        CheckboxListTile(
                          value: controller?.highFilterValue,
                          onChanged: controller?.setHigh,
                          title: const Text('HIGH'),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                      top: 50, right: BrechoSpacing.xx, left: BrechoSpacing.xx),
                  sliver: SliverToBoxAdapter(
                      child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: () => controller?.clearCardFilter(),
                            child: const Text('Limpar')),
                      ),
                      const SizedBox(width: BrechoSpacing.x),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Modular.to.pop();
                              controller?.applyCardFilter();
                            },
                            child: const Text('Aplicar')),
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
