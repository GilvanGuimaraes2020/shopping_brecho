import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';

class ChipsFilter extends StatelessWidget {
  final List<ChipItemModel> items;
  final void Function() clearAll;

  const ChipsFilter({
    required this.items,
    required this.clearAll,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28 + (BrechoSpacing.xxiv * 2),
      margin: const EdgeInsets.only(right: BrechoSpacing.xxiv),
      child: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: BrechoSpacing.xxiv),
              ...items.map((e) => _chip(e.label, e.action)),
              const SizedBox(width: 120),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 132,
              height: BrechoSpacing.xxxii,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: const [
                    0.5,
                    1
                  ],
                      colors: [
                    BrechoColors.monoWhite,
                    BrechoColors.monoWhite.withOpacity(0)
                  ])),
              child: BrechoOutlineButton(
                label: 'Limpar',
                size: BrechoButtonSize.small,
                onPressed: clearAll,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _chip(String label, void Function() action) {
    return Container(
      margin: const EdgeInsets.only(
          right: BrechoSpacing.viii,
          top: BrechoSpacing.xxiv,
          bottom: BrechoSpacing.xxiv),
      padding: const EdgeInsets.only(
          left: BrechoSpacing.iv, right: BrechoSpacing.viii),
      decoration: const BoxDecoration(
        color: BrechoColors.primaryBlue5,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Material(
            color: BrechoColors.primaryBlue5,
            child: InkWell(
              onTap: action,
              child: const Icon(BrechoIcons.close,
                  size: 16, color: BrechoColors.monoWhite),
            ),
          ),
          Text(label).labelExtraSmallSemiBold(
            style: const TextStyle(color: BrechoColors.monoWhite),
          )
        ],
      ),
    );
  }
}

class ChipItemModel {
  final String label;
  final void Function() action;

  ChipItemModel({required this.label, required this.action});
}
