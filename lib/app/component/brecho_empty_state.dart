import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';


class BrechoEmptyState extends StatelessWidget {
  final Widget? image;
  final String title;
  final String description;
  final String? buttonTitle;
  final void Function()? onPressed;
  final String? optionalButtonTitle;
  final void Function()? optionalOnPressed;
  final bool inScrollable;
  final EdgeInsets? customPadding;
  final MainAxisAlignment mainAxisAlignment;

  const BrechoEmptyState({
    super.key,
    this.image,
    required this.title,
    required this.description,
    required this.buttonTitle,
    required this.onPressed,
    this.optionalButtonTitle,
    this.optionalOnPressed,
    this.inScrollable = false,
    this.customPadding,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  const BrechoEmptyState.genericInfoAndTryAgain({
    super.key,
    this.image,
    this.title = 'Oops!',
    this.description =
        'Não foi possível carregar as informações. Tente novamente.',
    this.buttonTitle = 'Tentar novamente',
    required this.onPressed,
    this.optionalButtonTitle,
    this.optionalOnPressed,
    this.inScrollable = false,
    this.customPadding,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  const BrechoEmptyState.clearFilters({
    super.key,
    this.image,
    this.title = 'Oops!',
    this.description =
        'Não foi possível carregar as informações com os filtros selecionados.',
    this.buttonTitle = 'Limpar filtros',
    required this.onPressed,
    this.optionalButtonTitle,
    this.optionalOnPressed,
    this.inScrollable = false,
    this.customPadding,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: inScrollable
          ? customPadding ??
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 3)
          : customPadding ?? EdgeInsets.zero,
      child: Center(
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            image ?? Container(),
            const SizedBox(height: BrechoSpacing.xxiv),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: BrechoSpacing.lvi),
              child: Text(
                title,
                softWrap: true,
                textAlign: TextAlign.center,
              ).labelSmallSemiBold(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: BrechoSpacing.viii,
                bottom: BrechoSpacing.xvi,
                left: BrechoSpacing.xxiv,
                right: BrechoSpacing.xxiv,
              ),
              child: Text(
                description,
                softWrap: true,
                textAlign: TextAlign.center,
              ).bodySmallRegular(
                style: const TextStyle(color: BrechoColors.neutral6),
              ),
            ),
            if (buttonTitle != null && onPressed != null)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: BrechoSpacing.xxiv),
                child: BrechoOutlineButton(
                  label: buttonTitle!,
                  onPressed: onPressed,
                ),
              ),
            if (optionalButtonTitle != null && optionalOnPressed != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: BrechoSpacing.xvi, horizontal: BrechoSpacing.xxiv),
                child: BrechoOutlineButton(
                  label: optionalButtonTitle!,
                  onPressed: optionalOnPressed,
                ),
              )
          ],
        ),
      ),
    );
  }
}
