import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BrechoDialog {

  BrechoDialog._();

  static Future<dynamic> showModalBottomSheet(
   { required BuildContext context,
   required Widget Function(BuildContext) builder,
   EdgeInsets padding = EdgeInsets.zero,
   bool expand = false,
   bool enableDrag = false,
   })async{
    final dynamic v = padding == EdgeInsets.zero
        ? await showCupertinoModalBottomSheet(
            bounce: true,
            expand: expand,
            context: context,
            backgroundColor: Colors.transparent,
            builder: builder,
            animationCurve: Curves.ease,
            previousRouteAnimationCurve: Curves.ease,
            duration: const Duration(milliseconds: 400),
            enableDrag: enableDrag)
        : await showCustomModalBottomSheet(
            bounce: true,
            expand: true,
            context: context,
            backgroundColor: Colors.transparent,
            builder: builder,
            animationCurve: Curves.ease,
            duration: const Duration(milliseconds: 400),
            containerWidget: (_, animation, child) => _WebModal(
              backgroundColor: Colors.transparent,
              padding: padding,
              child: child,
            ),
          );

    return v;
  }
}

class _WebModal extends StatelessWidget {
  final Color? backgroundColor;
  final EdgeInsets padding;
  final Widget child;

  const _WebModal({
    this.backgroundColor,
    required this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding,
        child: Material(
          color: backgroundColor,
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(BrechoSpacing.xxiv),
              topRight: Radius.circular(BrechoSpacing.xxiv)),
          child: child,
        ),
      ),
    );
  }
}
