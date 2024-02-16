import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class BrechoFloatingDock extends StatelessWidget {
  final bool isVisible;
  final List<Widget> children;
  final bool hasBorder;
  final Color color;

  const BrechoFloatingDock({
    super.key,
    this.isVisible = true,
    required this.children,
    this.hasBorder = true,
    this.color = BrechoColors.monoWhite,
  });

  @override
  Widget build(BuildContext context) {
    if (!isVisible) {
      return const SizedBox(height: 0);
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(
        BrechoSpacing.xxiv,
        BrechoSpacing.xvi,
        BrechoSpacing.xxiv,
        BrechoSpacing.xvi,
      ),
      decoration: BoxDecoration(
        color: color,
        boxShadow: hasBorder
            ? [
                const BoxShadow(
                    color: BrechoColors.neutral8, offset: Offset(0, -1))
              ]
            : null,
      ),
      child: Row(
        children: children,
      ),
    );
  }
}
