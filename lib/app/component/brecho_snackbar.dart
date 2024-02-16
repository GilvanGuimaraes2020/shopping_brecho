import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';

enum HenrySnackbarStatus { success, error, warning, info }

class HenrySnackbar {
  static final HenrySnackbar _instance = HenrySnackbar._internal();

  factory HenrySnackbar() {
    return _instance;
  }

  static GlobalKey<ScaffoldMessengerState> rootMessengerState =
      GlobalKey<ScaffoldMessengerState>();

  HenrySnackbar._internal();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? show({
    required String text,
    required HenrySnackbarStatus status,
    void Function()? onVisible,
    int seconds = 2,
    SnackBarAction? action,
    double marginBottom = 0.0,
  }) {
    Color? bgColor;
    IconData? icon;

    if (status == HenrySnackbarStatus.success) {
      bgColor = BrechoColors.responseSuccess;
      icon = BrechoIcons.check_circle_outline;
    } else if (status == HenrySnackbarStatus.warning) {
      bgColor = BrechoColors.responseWarning;
      icon = BrechoIcons.warning;
    } else if (status == HenrySnackbarStatus.error) {
      bgColor = BrechoColors.responseDanger;
      icon = BrechoIcons.close_outline;
    } else if (status == HenrySnackbarStatus.info) {
      bgColor = BrechoColors.secondaryBlue5;
      icon = BrechoIcons.warning;
    }

    return rootMessengerState.currentState?.showSnackBar(SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      backgroundColor: bgColor,
      content: DecoratedBox(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: BrechoColors.monoBlack.withOpacity(0.08),
            offset: const Offset(0, 8),
            blurRadius: 18,
          )
        ]),
        child: Row(
          children: <Widget>[
            Icon(icon, color: BrechoColors.monoWhite),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: BrechoSpacing.viii),
                child: Text(
                  text,
                  softWrap: true,
                ).labelSmallSemiBold(
                    style: const TextStyle(color: BrechoColors.monoWhite)),
              ),
            ),
            InkWell(
                onTap: () {
                  rootMessengerState.currentState?.hideCurrentSnackBar();
                },
                child: const Icon(BrechoIcons.close,
                    color: BrechoColors.monoWhite)),
          ],
        ),
      ),
      onVisible: onVisible,
      action: action,
      duration: Duration(seconds: seconds),
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(BrechoSpacing.xvi),
      margin: EdgeInsets.only(
        left: BrechoSpacing.xxiv,
        top: BrechoSpacing.xxiv,
        right: BrechoSpacing.xxiv,
        bottom: BrechoSpacing.xxiv + marginBottom,
      ),
      elevation: 0,
    ));
  }

  static void showInvalidForm() {
    show(
      text: 'Preencha todos os campos corretamente!',
      status: HenrySnackbarStatus.error,
    );
  }

  static void showOpportunityIsFinished() {
    show(
      text: 'Esta oportunidade está finalizada.',
      status: HenrySnackbarStatus.warning,
    );
  }

  static void showGenericErrorOnAction() {
    show(
      text: 'Não foi possível executar essa ação. Tente novamente.',
      status: HenrySnackbarStatus.error,
    );
  }

  static void tryAgain(String featureTitle) {
    show(
      text: 'Não foi possível $featureTitle. Tente novamente, por favor.',
      status: HenrySnackbarStatus.error,
    );
  }
}

class HenrySnackbarBottomSheet {
  HenrySnackbarBottomSheet._();

  static void show(
    BuildContext? context, {
    required String text,
    required HenrySnackbarStatus status,
    int seconds = 2,
    double marginBottom = 0.0,
  }) {
    if (context == null) {
      return;
    }

    Color? bgColor;
    IconData? icon;

    if (status == HenrySnackbarStatus.success) {
      bgColor = BrechoColors.responseSuccess;
      icon = BrechoIcons.check_circle_outline;
    } else if (status == HenrySnackbarStatus.warning) {
      bgColor = BrechoColors.responseWarning;
      icon = BrechoIcons.warning;
    } else if (status == HenrySnackbarStatus.error) {
      bgColor = BrechoColors.responseDanger;
      icon = BrechoIcons.close_outline;
    }

    showModalBottomSheet(
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Container(
        margin: EdgeInsets.fromLTRB(
          BrechoSpacing.xxiv,
          BrechoSpacing.xxiv,
          BrechoSpacing.xxiv,
          BrechoSpacing.xxiv + marginBottom,
        ),
        padding: const EdgeInsets.all(BrechoSpacing.xvi),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: BrechoColors.monoBlack.withOpacity(0.08),
                offset: const Offset(0, 8),
                blurRadius: 18,
              )
            ]),
        child: Row(
          children: <Widget>[
            Icon(icon, color: BrechoColors.monoWhite),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: BrechoSpacing.viii),
                child: Text(
                  text,
                  softWrap: true,
                ).labelSmallSemiBold(
                    style: const TextStyle(color: BrechoColors.monoWhite)),
              ),
            ),
            InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(BrechoIcons.close,
                    color: BrechoColors.monoWhite)),
          ],
        ),
      ),
    );

    Future.delayed(
        Duration(seconds: seconds), () => Navigator.of(context).pop());
  }
}
