import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';

class Badge extends StatelessWidget {
  final String child;
  final String? color;
  final Function()? onTap;
  const Badge({super.key, required this.child, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final handleColor =
        (color?.toLowerCase().replaceAll('#', '0xFF') ?? '0xFFcce8fe').trim();
    final backGroundColor = Color(int.tryParse(handleColor) ?? 0xFFcce8fe);

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(BrechoSpacing.vi),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: backGroundColor),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              child,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: color == null
                      ? BrechoColors.secondaryBlue5
                      : BrechoColors.monoWhite),
            ),
            if (onTap != null)
              Padding(
                padding: const EdgeInsets.only(
                  left: BrechoSpacing.vi,
                ),
                child: Icon(
                  BrechoIcons.close,
                  size: 10,
                  color: color == null
                      ? BrechoColors.secondaryBlue5
                      : BrechoColors.monoWhite,
                ),
              )
          ],
        ),
      ),
    );
  }
}
