import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class BrechoBottomSheet extends StatelessWidget {
  final String? title;
  final Widget body;
  final bool childHasScaffold;

  const BrechoBottomSheet({
    super.key,
    this.title,
    required this.body,
    this.childHasScaffold = false,
  });

  @override
  Widget build(BuildContext context) {
    final double dragIndicatorMargin =
        ((MediaQuery.of(context).size.width - BrechoSpacing.xxiv) / 2)
            .ceilToDouble();

    return Container(
      padding: EdgeInsets.only(
        bottom: childHasScaffold ? 0 : MediaQuery.of(context).viewInsets.bottom,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(BrechoSpacing.xxiv),
          topRight: Radius.circular(BrechoSpacing.xxiv),
        ),
        child: Material(
          color: BrechoColors.monoWhite,
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // AppBar has 8 pixel in bottom padding
                AppBar(
                  title: title != null
                      ? Padding(
                          padding:
                              const EdgeInsets.only(top: BrechoSpacing.xxiv),
                          child: Text(title!).labelSmallSemiBold(),
                        )
                      : null,
                  backgroundColor: BrechoColors.monoWhite,
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  toolbarHeight: title == null ? BrechoSpacing.xxiv : 46,
                  flexibleSpace: Container(
                    margin: EdgeInsets.only(
                      top: BrechoSpacing.xxiv,
                      left: dragIndicatorMargin,
                      right: dragIndicatorMargin,
                    ),
                    height: BrechoSpacing.xxiv,
                    width: BrechoSpacing.xxiv,
                    decoration: BoxDecoration(
                      color: BrechoColors.neutral8,
                      borderRadius: BorderRadius.circular(BrechoSpacing.viii),
                    ),
                  ),
                ),
                body
              ],
            ),
          ),
        ),
      ),
    );
  }
}
