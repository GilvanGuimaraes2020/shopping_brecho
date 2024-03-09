// original from bottom_navy_bar package: 5.4.0

import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BrechoNavBar extends StatelessWidget {
  final int? selectedIndex;
  final bool showElevation;
  final Duration animationDuration;
  final List<BrechoNavBarItem> items;
  final ValueChanged<int>? onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;

  const BrechoNavBar(
      {super.key,
      this.selectedIndex = 0,
      this.showElevation = true,
      this.itemCornerRadius = 16,
      this.animationDuration = const Duration(milliseconds: 270),
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
      required this.items,
      required this.onItemSelected})
      : assert(items.length >= 2 && items.length <= 6);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          if (showElevation)
            const BoxShadow(color: BrechoColors.neutral8, offset: Offset(0, -1)),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: BrechoSpacing.xxiv,
            right: BrechoSpacing.xxiv,
            top: BrechoSpacing.viii,
            bottom: BrechoSpacing.viii,
          ),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((item) {
              final index = items.indexOf(item);
              final String? keyItem;
              if (key != null) {
                final String str = key.toString();
                final startIndex = str.indexOf("'");
                final endIndex = str.lastIndexOf("'");
                keyItem =
                    '${str.substring(startIndex + 1, endIndex)}.${item.title}';
              } else {
                keyItem = null;
              }
              return InkWell(
                key: keyItem != null ? Key(keyItem) : null,
                onTap: onItemSelected != null
                    ? () {
                        HapticFeedback.lightImpact();
                        onItemSelected!(index);
                      }
                    : null,
                child: _ItemWidget(
                  item: item,
                  isSelected: index == selectedIndex,
                  isLast: item.title == items.last.title,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final bool isSelected;
  final bool isLast;
  final BrechoNavBarItem item;
  final double itemCornerRadius;
  final Duration animationDuration;

  const _ItemWidget({
    required this.item,
    required this.isSelected,
    required this.isLast,
    required this.animationDuration,
    required this.itemCornerRadius,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Icon(
        item.icon,
        color: isSelected ? BrechoColors.monoWhite : BrechoColors.neutral6,
      ),
      if (!isSelected)
        Padding(
          padding: const EdgeInsets.only(top: BrechoSpacing.ii),
          child: Text(
            item.title,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
          ).labelTinyRegular(
              style: const TextStyle(color: BrechoColors.neutral6)),
        ),
    ];

    if (isLast && isSelected) {
      list = list.reversed.toList();
    }

    return Container(
      width: BrechoSpacing.xlviii,
      height: BrechoSpacing.xlviii,
      decoration: BoxDecoration(
        color: isSelected ? BrechoColors.primaryBlue5 : BrechoColors.monoWhite,
        borderRadius: BorderRadius.circular(itemCornerRadius),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: BrechoSpacing.xlviii,
              height: BrechoSpacing.xlviii,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              ),
            ),
            item.badge ?? Container()
          ],
        ),
      ),
    );
  }
}

class BrechoNavBarItem {
  final IconData icon;
  final String title;
  final Widget? badge;

  BrechoNavBarItem({required this.icon, required this.title, this.badge});
}
