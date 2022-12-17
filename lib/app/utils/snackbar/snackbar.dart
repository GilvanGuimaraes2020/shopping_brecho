import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

enum BrechoSnackbarStatus { error, success, warning }

// ignore: avoid_classes_with_only_static_members
class BrechoSnackbar {
  // static final BrechoSnackbar _internal = BrechoSnackbar._internal;

  // factory BrechoSnackbar._() ;

  static final GlobalKey<ScaffoldMessengerState> rootMessengerState =
      GlobalKey<ScaffoldMessengerState>();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? show(
      {required String text,
      required BrechoSnackbarStatus brechoSnackbarStatus,
      int seconds = 2,
      SnackBarAction? action}) {
    Color backColor;
    IconData icon;
    switch (brechoSnackbarStatus) {
      case BrechoSnackbarStatus.error:
        backColor = BrechoColors.responseDanger;
        icon = Icons.error;
        break;
      case BrechoSnackbarStatus.success:
        backColor = BrechoColors.responseSuccess;
        icon = Icons.check_box_rounded;
        break;
      case BrechoSnackbarStatus.warning:
        backColor = BrechoColors.responseWarning;
        icon = Icons.warning;
        break;
    }
    return rootMessengerState.currentState?.showSnackBar(SnackBar(
        action: action,
        backgroundColor: backColor,
        content: DecoratedBox(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: BrechoColors.neutral1,
              blurRadius: BrechoSpacing.x,
              blurStyle: BlurStyle.solid,
              offset: Offset(10, 10),
            ),
          ]),
          child: Row(children: [
            Icon(icon),
            Text(text),
            InkWell(
              onTap: () =>
                  rootMessengerState.currentState?.hideCurrentSnackBar(),
              child: const Icon(Icons.close),
            )
          ]),
        )));
  }
}
