import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// ignore: avoid_classes_with_only_static_members
class BrechoDialog {
  static Future<dynamic> showModalBottomSheet({
    required BuildContext context,
    required Widget Function(BuildContext) builder,
    EdgeInsets padding = EdgeInsets.zero,
    bool expand = false,
  }) async {
    final dynamic v = padding == EdgeInsets.zero
        ? await showCupertinoModalBottomSheet(
            context: context,
            builder: builder,
          )
        : await showCustomModalBottomSheet(
            context: context,
            builder: builder,
            containerWidget: (_, animation, child) =>
                _WebModal(padding: padding, child: child),
          );

    return v;
  }
}

class _WebModal extends StatelessWidget {
  final Color? backColor;
  final EdgeInsets padding;
  final Widget child;

  const _WebModal(
      {super.key, required this.padding, required this.child, this.backColor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding,
        child: Material(
          color: backColor,
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: child,
        ),
      ),
    );
  }
}
