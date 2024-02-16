import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_brecho/app/component/brecho_loading_button.dart';

enum BrechoButtonSize { small, medium, large }

enum BrechoIconButtonShape { rounded, square }

enum BrechoButtonTheme {
  regular,
  danger,
  primary,
  outline,
}

enum BrechoButtonVariant {
  variant1,
  variant2,
  variant3,
  variant4,
  danger,
}

const _heightSmall = 28.0;
const _heightMedium = 38.0;
const _heightLarge = 48.0;

const _paddingSmall = EdgeInsets.symmetric(horizontal: 8.0);
const _paddingMedium = EdgeInsets.symmetric(horizontal: 16.0);
const _paddingLarge = EdgeInsets.symmetric(horizontal: 24.0);

const _iconSmall = 16.0;
const _iconMedium = 22.0;
const _iconLarge = 24.0;

const _fontFamily = 'Inter';

const _labelExtraSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 12,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
  letterSpacing: -0.3,
  height: 1,
);

const _labelSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
  letterSpacing: -0.3,
  height: 1,
);

const _labelMedium = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
  letterSpacing: -0.4,
  height: 1,
);

Map<String, dynamic> _getFormattedValues(BrechoButtonSize size, String label,
    IconData? prependIcon, IconData? appendIcon, Color iconColor,
    {Color? textColor}) {
  double? height;
  double? iconSize;
  double? iconSpace;
  Widget? text;
  EdgeInsets? padding;

  if (size == BrechoButtonSize.small) {
    height = _heightSmall;
    iconSize = _iconSmall;
    iconSpace = BrechoSpacing.vi;
    padding = _paddingSmall;
    text = Text(label, style: _labelExtraSmall.copyWith(color: textColor));
  } else if (size == BrechoButtonSize.medium) {
    height = _heightMedium;
    iconSize = _iconMedium;
    iconSpace = BrechoSpacing.viii;
    padding = _paddingMedium;
    text = Text(label, style: _labelSmall.copyWith(color: textColor));
  } else if (size == BrechoButtonSize.large) {
    height = _heightLarge;
    iconSize = _iconLarge;
    iconSpace = BrechoSpacing.xii;
    padding = _paddingLarge;
    text = Text(label, style: _labelMedium.copyWith(color: textColor));
  }

  text = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      if (prependIcon != null)
        Icon(prependIcon, color: iconColor, size: iconSize),
      if (prependIcon != null) SizedBox(width: iconSpace),
      text!,
      if (appendIcon != null) SizedBox(width: iconSpace),
      if (appendIcon != null) Icon(appendIcon, color: iconColor, size: iconSize)
    ],
  );

  return {
    'height': height,
    'iconSize': iconSize,
    'iconSpace': iconSpace,
    'text': text,
    'padding': padding
  };
}

class BrechoPrimaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final IconData? prependIcon;
  final IconData? appendIcon;
  final BrechoButtonSize size;
  final double? width;
  final bool isLoading;
  final double? borderRadius;
  final BrechoButtonVariant variant;

  const BrechoPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.prependIcon,
    this.appendIcon,
    this.size = BrechoButtonSize.medium,
    this.width,
    this.isLoading = false,
    this.borderRadius,
    this.variant = BrechoButtonVariant.variant1,
  });

  @override
  Widget build(BuildContext context) {
  const  Color color = BrechoColors.primaryBlue5;
  const  Color onColor = BrechoColors.monoWhite;
  const  Color busyColor = BrechoColors.primaryBlue6;
  const  Color hightLightColor = BrechoColors.primaryBlue4;


    final format = _getFormattedValues(
      size,
      label,
      prependIcon,
      appendIcon,
      onColor,
      textColor: onColor,
    );

    return SizedBox(
      height: format['height'] as double?,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
        child: MaterialButton(
          onPressed: onPressed != null && !isLoading
              ? () {
                  HapticFeedback.lightImpact();
                  onPressed!();
                }
              : null,
          color: isLoading ? busyColor : color,
          disabledColor: busyColor,
          highlightColor: hightLightColor,
          textColor: onColor,
          disabledTextColor: onColor,
          elevation: 0,
          padding: format['padding'] as EdgeInsetsGeometry?,
          child: _LoadingSwitcher(
            text: format['text'] as Widget?,
            isLoading: isLoading,
          ),
        ),
      ),
    );
  }
}

class BrechoSecondaryButton extends StatefulWidget {
  final String label;
  final void Function()? onPressed;
  final BrechoButtonSize size;
  final IconData? prependIcon;
  final IconData? appendIcon;
  final double? width;
  final bool isLoading;

  const BrechoSecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.prependIcon,
    this.appendIcon,
    this.size = BrechoButtonSize.medium,
    this.width,
    this.isLoading = false,
  });

  @override
  BrechoSecondaryButtonState createState() => BrechoSecondaryButtonState();
}

class BrechoSecondaryButtonState extends State<BrechoSecondaryButton> {
  bool _onHightLight = false;

  @override
  Widget build(BuildContext context) {
    final format = _getFormattedValues(
      widget.size,
      widget.label,
      widget.prependIcon,
      widget.appendIcon,
      _onHightLight || widget.onPressed == null
          ? BrechoColors.monoWhite
          : BrechoColors.primaryBlue5,
    );

    return SizedBox(
      height: format['height'] as double?,
      width: widget.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: MaterialButton(
          onPressed: widget.onPressed != null && !widget.isLoading
              ? () {
                  HapticFeedback.lightImpact();
                  widget.onPressed!();
                }
              : null,
          color: widget.isLoading
              ? BrechoColors.primaryBlue7
              : BrechoColors.primaryBlue9,
          disabledColor: BrechoColors.primaryBlue7,
          highlightColor: BrechoColors.primaryBlue5,
          textColor:
              _onHightLight ? BrechoColors.monoWhite : BrechoColors.primaryBlue5,
          disabledTextColor: BrechoColors.monoWhite,
          elevation: 0,
          padding: format['padding'] as EdgeInsetsGeometry?,
          onHighlightChanged: (value) {
            setState(() {
              _onHightLight = value;
            });
          },
          child: _LoadingSwitcher(
            text: format['text'] as Widget?,
            isLoading: widget.isLoading,
          ),
        ),
      ),
    );
  }
}

class BrechoDangerButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final IconData? prependIcon;
  final IconData? appendIcon;
  final BrechoButtonSize size;
  final double? width;

  const BrechoDangerButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.prependIcon,
      this.appendIcon,
      this.size = BrechoButtonSize.medium,
      this.width});

  @override
  Widget build(BuildContext context) {
    final format = _getFormattedValues(
        size, label, prependIcon, appendIcon, BrechoColors.monoWhite);

    return SizedBox(
      height: format['height'] as double?,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: MaterialButton(
          onPressed: onPressed != null
              ? () {
                  HapticFeedback.lightImpact();
                  onPressed!();
                }
              : null,
          color: BrechoColors.responseDanger,
          disabledColor: BrechoColors.responseDanger.withOpacity(0.6),
          highlightColor: BrechoColors.responseDanger.withOpacity(0.6),
          textColor: BrechoColors.monoWhite,
          disabledTextColor: BrechoColors.monoWhite,
          elevation: 0,
          padding: format['padding'] as EdgeInsetsGeometry?,
          child: format['text'] as Widget?,
        ),
      ),
    );
  }
}

class BrechoOutlineButton extends StatefulWidget {
  final String label;
  final void Function()? onPressed;
  final BrechoButtonSize size;
  final IconData? prependIcon;
  final IconData? appendIcon;
  final double? width;
  final bool isLoading;
  final BrechoButtonVariant variant;

  const BrechoOutlineButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.size = BrechoButtonSize.medium,
    this.prependIcon,
    this.appendIcon,
    this.width,
    this.isLoading = false,
    this.variant = BrechoButtonVariant.variant1,
  });

  @override
  BrechoOutlineButtonState createState() => BrechoOutlineButtonState();
}

class BrechoOutlineButtonState extends State<BrechoOutlineButton> {
  bool isPressing = false;

  Color get _borderColor {
    if (widget.variant == BrechoButtonVariant.danger) {
      if (widget.isLoading) BrechoColors.responseDanger.withOpacity(0.5);
      return BrechoColors.responseDanger;
    }

    if (isPressing) {
      return BrechoColors.primaryBlue3;
    }


    return BrechoColors.primaryBlue6;
  }

  double get borderWidth {
    if (widget.variant == BrechoButtonVariant.variant2) {
      return 1.5;
    }

    return 1;
  }

  @override
  Widget build(BuildContext context) {
  const  Color onColor = BrechoColors.primaryBlue5;
   const Color onBusyColor = BrechoColors.primaryBlue6;


    final iconAndTextColor = widget.onPressed == null ? onBusyColor : onColor;

    final format = _getFormattedValues(
      widget.size,
      widget.label,
      widget.prependIcon,
      widget.appendIcon,
      iconAndTextColor,
      textColor: iconAndTextColor,
    );

    return SizedBox(
      height: format['height'] as double?,
      width: widget.width,
      child: GestureDetector(
        onTapDown: (_) {
          if (widget.onPressed != null && !widget.isLoading) {
            setState(() => isPressing = true);
          }
        },
        onTapUp: (_) {
          if (widget.onPressed != null && !widget.isLoading) {
            HapticFeedback.lightImpact();
            widget.onPressed!();
            setState(() => isPressing = false);
          }
        },
        onTapCancel: () => setState(() => isPressing = false),
        child: Container(
          padding: format['padding'] as EdgeInsetsGeometry?,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: _borderColor, width: borderWidth),
            borderRadius: BorderRadius.circular(16),
          ),
          child: _LoadingSwitcher(
            text: format['text'] as Widget?,
            isLoading: widget.isLoading,
            loadingColor: widget.variant == BrechoButtonVariant.danger
                ? BrechoColors.responseDanger.withOpacity(0.5)
                : BrechoColors.primaryBlue6,
          ),
        ),
      ),
    );
  }
}

class BrechoTextButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final BrechoButtonSize size;
  final double? width;
  final Color disabledColor;
  final Color highlightColor;
  final Color textColor;
  final Color disabledTextColor;
  final bool isLoading;

  const BrechoTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.size = BrechoButtonSize.medium,
    this.width,
    this.disabledColor = BrechoColors.primaryBlue10,
    this.highlightColor = BrechoColors.primaryBlue10,
    this.textColor = BrechoColors.primaryBlue5,
    this.disabledTextColor = BrechoColors.primaryBlue7,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    double? height;
    Text? text;
    EdgeInsets? padding;

    if (size == BrechoButtonSize.small) {
      height = _heightSmall;
      padding = _paddingSmall;
      text = Text(label, style: _labelExtraSmall);
    } else if (size == BrechoButtonSize.medium) {
      height = _heightMedium;
      padding = _paddingMedium;
      text = Text(label, style: _labelSmall);
    } else if (size == BrechoButtonSize.large) {
      height = _heightLarge;
      padding = _paddingLarge;
      text = Text(label, style: _labelMedium);
    }

    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: MaterialButton(
          onPressed: onPressed != null && !isLoading
              ? () {
                  HapticFeedback.lightImpact();
                  onPressed!();
                }
              : null,
          color: BrechoColors.monoWhite,
          disabledColor: disabledColor,
          highlightColor: highlightColor,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          elevation: 0,
          padding: padding,
          child: _LoadingSwitcher(
            isLoading: isLoading,
            text: text,
            loadingColor: BrechoColors.primaryBlue7,
          ),
        ),
      ),
    );
  }
}

class BrechoIconButton extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final Color? color;
  final Color? highlightColor;
  final Color? disabledColor;
  final void Function()? onPressed;
  final BrechoButtonSize size;
  final BrechoIconButtonShape shape;
  final BorderSide borderSide;
  final double? iconSize;
  final bool isLoading;

  const BrechoIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.color,
    this.highlightColor,
    this.disabledColor,
    this.size = BrechoButtonSize.medium,
    this.shape = BrechoIconButtonShape.rounded,
    this.borderSide = BorderSide.none,
    this.iconSize,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    double? realSize;
    double? originalIconSize;

    if (size == BrechoButtonSize.small) {
      realSize = _heightSmall;
      originalIconSize = _iconSmall;
    } else if (size == BrechoButtonSize.medium) {
      realSize = _heightMedium;
      originalIconSize = _iconMedium;
    } else if (size == BrechoButtonSize.large) {
      realSize = _heightLarge;
      originalIconSize = _iconLarge;
    }

    return SizedBox(
      height: realSize,
      width: realSize,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: realSize!,
              maxWidth: realSize,
              minHeight: realSize,
              minWidth: realSize),
          child: MaterialButton(
            onPressed: onPressed != null && !isLoading
                ? () {
                    HapticFeedback.lightImpact();
                    onPressed!();
                  }
                : null,
            color: color ?? BrechoColors.monoWhite,
            disabledColor: isLoading
                ? BrechoColors.primaryBlue7
                : disabledColor ?? BrechoColors.monoWhite,
            highlightColor: highlightColor ?? BrechoColors.primaryBlue10,
            highlightElevation: 0,
            elevation: 0,
            shape: shape == BrechoIconButtonShape.rounded
                ? CircleBorder(side: borderSide)
                : RoundedRectangleBorder(
                    side: borderSide,
                    borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.zero,
            child: _LoadingSwitcher(
                text: Icon(
                  icon,
                  size: iconSize ?? originalIconSize,
                  color: iconColor ?? BrechoColors.primaryBlue5,
                ),
                isLoading: isLoading),
          ),
        ),
      ),
    );
  }
}

class BrechoInkwell extends StatelessWidget {
  final double padding;
  final void Function()? onTap;
  final Widget child;

  const BrechoInkwell({
    super.key,
    this.padding = 5,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap != null
            ? () {
                HapticFeedback.lightImpact();
                onTap!();
              }
            : null,
        child: Padding(padding: EdgeInsets.all(padding), child: child));
  }
}

class _LoadingSwitcher extends StatelessWidget {
  final Widget? text;
  final bool isLoading;
  final Color? loadingColor;
  const _LoadingSwitcher({
    required this.text,
    required this.isLoading,
    this.loadingColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: isLoading
          ? BrechoLoadingButton(color: loadingColor ?? BrechoColors.monoWhite)
          : FittedBox(child: text),
    );
  }
}

class BrechoFloatButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final BrechoButtonTheme theme;
  final bool isVisible;
  final bool hasBorder;
  final bool isLoading;

  const BrechoFloatButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.theme = BrechoButtonTheme.primary,
      this.isVisible = true,
      this.hasBorder = true,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    if (!isVisible) {
      return const SizedBox(height: 0);
    }

    return Container(
      padding: const EdgeInsets.all(BrechoSpacing.xxiv),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        border: hasBorder
            ? const Border(
                top: BorderSide(
                  color: BrechoColors.neutral8,
                ),
              )
            : null,
      ),
      child: theme == BrechoButtonTheme.danger
          ? BrechoDangerButton(
              label: label,
              size: BrechoButtonSize.large,
              onPressed: onPressed,
            )
          : theme == BrechoButtonTheme.outline
              ? BrechoOutlineButton(
                  label: label,
                  size: BrechoButtonSize.large,
                  onPressed: onPressed,
                  isLoading: isLoading,
                )
              : BrechoPrimaryButton(
                  label: label,
                  size: BrechoButtonSize.large,
                  onPressed: onPressed,
                  isLoading: isLoading,
                ),
    );
  }
}
