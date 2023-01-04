import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';

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
      int seconds = 3,
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
        duration: Duration(seconds: seconds),
        padding: const EdgeInsets.all(BrechoSpacing.viii),
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BrechoSpacing.viii)),
        content: SizedBox(
          height: 50,
          child: Row(children: [
            Icon(icon),
            const Expanded(child: SizedBox()),
            Text(text).labelMediumSemiBold(),
            const Expanded(child: SizedBox()),
            InkWell(
              onTap: () =>
                  rootMessengerState.currentState?.hideCurrentSnackBar(),
              child: const Icon(Icons.close),
            )
          ]),
        )));
  }
}
