import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_bottom_sheet.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_checkbox.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/core/models/product_pendency/product_pendency_model.dart';

class PendencyListWidget extends StatefulWidget {
  final List<ProductPendencyModel> pendencies;
  final Function(List<int>) onSelectPendency;

  const PendencyListWidget(
      {super.key, required this.pendencies, required this.onSelectPendency});

  @override
  State<PendencyListWidget> createState() => _PendencyListWidgetState();
}

class _PendencyListWidgetState extends State<PendencyListWidget> {
  List<int> pendenciesSelected = [];

  @override
  Widget build(BuildContext context) {
    return BrechoBottomSheet(
        title: "Adicionar pendencias",
        body: Flexible(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(BrechoSpacing.xxiv),
              child: ListView.builder(
                  controller: ScrollController(),
                  itemCount: widget.pendencies.length,
                  itemBuilder: (context, index) {
                    final pendency = widget.pendencies[index];
                    final isSelected = pendenciesSelected.contains(pendency.id);

                    return _PendencyItem(
                      value: isSelected,
                      label: pendency.pendencyName ?? '',
                      onTap: () {
                        setState(() {
                          if (pendenciesSelected.contains(pendency.id)) {
                            pendenciesSelected.removeWhere(
                                (element) => element == pendency.id);
                          } else {
                            pendenciesSelected.add(pendency.id!);
                          }
                        });
                        widget.onSelectPendency.call(pendenciesSelected);
                      },
                    );
                  }),
            ),
            bottomSheet: BrechoFloatingDock(children: [
              Expanded(
                  child: BrechoSecondaryButton(
                      label: 'Cancelar', onPressed: () => Modular.to.pop())),
              const SizedBox(
                width: BrechoSpacing.xvi,
              ),
              Expanded(
                  child: BrechoPrimaryButton(
                      label: 'Aplicar', onPressed: () => Modular.to.pop(true))),
            ]),
          ),
        ));
  }
}

class _PendencyItem extends StatelessWidget {
  final bool value;
  final String label;
  final Function()? onTap;
  const _PendencyItem(
      {required this.value, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BrechoCheckbox(
              value: value,
              onChanged: (p0) => onTap?.call(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: BrechoSpacing.xii),
              child: Text(label).labelSmallRegular().color(value
                  ? BrechoColors.secondaryBlue8
                  : BrechoColors.secondaryBlue5),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: BrechoSpacing.x),
          child: Divider(),
        )
      ],
    );
  }
}
