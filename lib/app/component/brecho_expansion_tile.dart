import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';

class BrechoExpansionTile extends StatefulWidget {
  final Widget leading;
  final Widget? trailing;
  final EdgeInsets contentPadding;
  final Duration animatedDuration;
  final bool initiallyExpanded;
  final Widget child;

  const BrechoExpansionTile({
    super.key,
    required this.leading,
    this.trailing,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: BrechoSpacing.xxiv,
      vertical: BrechoSpacing.vi,
    ),
    this.initiallyExpanded = false,
    this.animatedDuration = const Duration(milliseconds: 400),
    required this.child,
  });

  @override
  State<BrechoExpansionTile> createState() => _BrechoExpansionTileState();
}

class _BrechoExpansionTileState extends State<BrechoExpansionTile> {
  late bool expanded;

  @override
  void initState() {
    expanded = widget.initiallyExpanded;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              expanded = !expanded;
            });
          },
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: widget.contentPadding,
              child: Row(
                children: [
                  Expanded(child: widget.leading),
                  AnimatedRotation(
                    turns: expanded ? -0.25 : 0,
                    duration: widget.animatedDuration,
                    child: Icon(
                      BrechoIcons.menu_right,
                      color: expanded
                          ? BrechoColors.secondaryBlue5
                          : BrechoColors.neutral6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedSize(
          duration: widget.animatedDuration,
          child:
              expanded ? widget.child : const SizedBox(width: double.maxFinite),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: BrechoSpacing.xvi),
          child: Divider(),
        ),
      ],
    );
  }
}
