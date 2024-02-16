import 'dart:io';

import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BrechoTextField extends StatefulWidget {
  final String? label;
  final TextInputType textInputType;
  final String? prefixText;
  final IconData? prefixIcon;
  final String? suffixText;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final TextEditingController? controller;
  final bool readOnly;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final String? hintText;
  final String? helperText;
  final void Function(String)? onChanged;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final bool autovalidate;
  final void Function(String?)? onSaved;
  final int? minLines;
  final int? maxLines;
  final bool obscureText;
  final int? maxLength;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final bool requestFocus;
  final bool enabled;
  final double? opacity;
  final bool showLoader;
  final bool lineValidator;
  final bool isPasswordField;
  final void Function()? onTapIcon;
  final bool isMoneyMaskedTextController;
  final bool autoValidateAlways;
  final Widget? icon;
  final bool alignLabelWithHint;
  final bool? isSelectModalField;
  final TextAlign? textAlign;
  final EdgeInsets? contentPadding;
  final bool autofocus;
  final bool isDense;
  final ScrollController? scrollController;
  final FloatingLabelBehavior? floatingLabelBehavior;

  const BrechoTextField({
    super.key,
    this.label,
    this.textInputType = TextInputType.text,
    this.prefixText,
    this.prefixIcon,
    this.suffixText,
    this.suffixIcon ,
    this.suffixIconColor = BrechoColors.neutral6,
    this.controller,
    this.readOnly = false,
    this.validator,
    this.onTap,
    this.hintText,
    this.helperText,
    this.onChanged,
    this.textInputAction = TextInputAction.done,
    this.focusNode,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.autovalidate = false,
    this.onSaved,
    this.minLines,
    this.maxLines = 1,
    this.obscureText = false,
    this.maxLength,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.requestFocus = false,
    this.enabled = true,
    this.opacity,
    this.showLoader = false,
    this.lineValidator = false,
    this.onTapIcon,
    this.isPasswordField = false,
    this.isMoneyMaskedTextController = false,
    this.autoValidateAlways = false,
    this.icon,
    this.alignLabelWithHint = false,
    this.isSelectModalField = false,
    this.textAlign,
    this.contentPadding,
    this.autofocus = false,
    this.isDense = false,
    this.scrollController,
    this.floatingLabelBehavior,
  }) : assert(!isPasswordField || (isPasswordField && onTapIcon != null));

  @override
  _BrechoTextFieldState createState() => _BrechoTextFieldState();
}

class _BrechoTextFieldState extends State<BrechoTextField> {
  TextEditingController? _controller;
  FocusNode? _focusNode;

  double iconSize = 20.0;
  bool triggerValidator = false;

  bool get isSelectModalField => widget.isSelectModalField ?? false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode!.addListener(() {
      if (!mounted) return;
      if (!_focusNode!.hasFocus) {
        Future.delayed(const Duration(milliseconds: 200)).then((_) {
          triggerValidator = true;
        });
      }
      setState(() {});
    });

    if (widget.requestFocus) _focusNode!.requestFocus();

    if (widget.isMoneyMaskedTextController && _controller!.text == '0') {
      _controller!.text = '';
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller!.dispose();
    }

    if (widget.focusNode == null) {
      _focusNode!.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final errorMessage = widget.validator?.call(null);

    final hasError = (triggerValidator || widget.autoValidateAlways) &&
        widget.autovalidate &&
        (errorMessage != null || widget.lineValidator);

    final mainColor =
        hasError ? BrechoColors.responseDanger : BrechoColors.primaryBlue5;

    final style1Base = TextStyle(
      color: _focusNode!.hasFocus
          ? mainColor
          : hasError
              ? BrechoColors.responseDanger
              : BrechoColors.secondaryBlue5,
      height: 1,
    );

    final _style1 = widget.isDense
        ? const Text('').labelSmallRegular(style: style1Base).style
        : const Text('').labelMediumRegular(style: style1Base).style;

    final _style2Base = TextStyle(
      color: _focusNode!.hasFocus
          ? mainColor
          : hasError
              ? BrechoColors.responseDanger
              : BrechoColors.neutral6,
      height: 1,
    );

    final _style2 = widget.isDense
        ? const Text('').labelSmallRegular(style: _style2Base).style
        : const Text('').labelMediumRegular(style: _style2Base).style;

    final _style3 = TextStyle(
      color: Colors.transparent,
      fontSize: widget.lineValidator ? 0 : 8,
      height: 1,
    );

    final _style4Base = TextStyle(
      color: BrechoColors.neutral6.withOpacity(0.5),
      height: 1,
    );

    final _style4 = widget.isDense
        ? const Text('').labelSmallRegular(style: _style4Base).style
        : const Text('').labelMediumRegular(style: _style4Base).style;

    final _hintStyleBase = TextStyle(
      color: _focusNode!.hasFocus ? BrechoColors.neutral7 : BrechoColors.neutral6,
      height: 1,
    );

    final _hintStyle = widget.isDense
        ? const Text('').labelSmallRegular(style: _hintStyleBase).style
        : const Text('').labelMediumRegular(style: _hintStyleBase).style;

    final _border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(BrechoSpacing.x),
        borderSide: BorderSide(
            color: hasError ? BrechoColors.responseDanger : BrechoColors.neutral7,
            width: hasError ? 2 : 1));

    final _borderFocus = OutlineInputBorder(
        borderRadius: BorderRadius.circular(BrechoSpacing.x),
        borderSide: BorderSide(color: mainColor, width: 2));

    final _contentPadding = kIsWeb
        ? const EdgeInsets.fromLTRB(
            12,
            20,
            12,
            12,
          )
        : widget.contentPadding ??
            (widget.isDense
                ? const  EdgeInsets.all(12)
                : const  EdgeInsets.fromLTRB(
                    BrechoSpacing.xxiv,
                    BrechoSpacing.xxiv,
                    BrechoSpacing.ii,
                    BrechoSpacing.xxiv,
                  ));

    List<TextInputFormatter>? inputFormatters;

    if (widget.inputFormatters != null) {
      inputFormatters = widget.inputFormatters;
    }

    if (widget.maxLength != null) {
      inputFormatters == null
          ? inputFormatters = [
              LengthLimitingTextInputFormatter(widget.maxLength)
            ]
          : inputFormatters
              .add(LengthLimitingTextInputFormatter(widget.maxLength));
    }

    return Stack(
      children: [
        Opacity(
          opacity: !widget.enabled ? 0.4 : widget.opacity ?? 1,
          child: IgnorePointer(
            ignoring: !widget.enabled,
            child: TextFormField(
              scrollController: widget.scrollController,
              textInputAction: widget.textInputAction,
              onFieldSubmitted: widget.onFieldSubmitted,
              onEditingComplete: widget.onEditingComplete,
              onTap: widget.onTap,
              readOnly: widget.readOnly,
              controller: _controller,
              focusNode: _focusNode,
              autofocus: widget.autofocus,
              keyboardType: widget.textInputType,
              style: (!_focusNode!.hasFocus &&
                      widget.isMoneyMaskedTextController &&
                      _controller!.text == '0,00')
                  ? _style4
                  : _style1,
              cursorColor: mainColor,
              autovalidateMode: widget.autoValidateAlways
                  ? AutovalidateMode.always
                  : triggerValidator
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
              onChanged: widget.onChanged,
              validator: widget.validator,
              onSaved: widget.onSaved,
              minLines: widget.minLines,
              maxLines: widget.maxLines,
              obscureText: widget.obscureText,
              textCapitalization: widget.textCapitalization,
              inputFormatters: inputFormatters,
              textAlignVertical: TextAlignVertical.center,
              textAlign: widget.textAlign ?? TextAlign.start,
              autocorrect: !(Platform.isIOS &&
                  widget.textInputType == TextInputType.emailAddress),
              decoration: InputDecoration(
                floatingLabelBehavior: widget.floatingLabelBehavior,
                icon: widget.icon,
                helperText: widget.helperText,
                hintText: widget.hintText,
                hintStyle: isSelectModalField ? _style1 : _hintStyle,
                labelText: widget.label,
                labelStyle: isSelectModalField ? _style1 : _style2,
                floatingLabelStyle: _style1,
                alignLabelWithHint: widget.alignLabelWithHint,
                prefixStyle: _style2,
                prefixText: widget.prefixText,
                prefixIconConstraints: BoxConstraints(
                    maxHeight: iconSize, maxWidth: iconSize + 16),
                prefixIcon: widget.prefixIcon != null
                    ? Padding(
                        padding: const  EdgeInsets.symmetric(
                            horizontal: BrechoSpacing.viii),
                        child: Icon(widget.prefixIcon) ,
                      )
                    : null,
                suffixStyle: _style2,
                suffixText: widget.suffixText,
                suffixIconConstraints: BoxConstraints(
                    maxHeight: iconSize, maxWidth: iconSize + 16),
                suffixIcon: widget.showLoader
                    ? Container(
                        width: iconSize + BrechoSpacing.viii,
                        height: iconSize,
                        padding:
                            const  EdgeInsets.only(right: BrechoSpacing.viii),
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            hasError
                                ? BrechoColors.responseDanger
                                : BrechoColors.primaryBlue5,
                          ),
                          strokeWidth: 2,
                        ),
                      )
                    : widget.suffixIcon != null
                        ? Padding(
                            padding:
                                const  EdgeInsets.only(right: BrechoSpacing.viii),
                            child: InkWell(
                              onTap: widget.onTapIcon,
                              child: Icon(widget.suffixIcon)
                            ),
                          )
                        : null,
                errorStyle: _style3,
                counterStyle: const TextStyle(fontSize: 0),
                counterText: '',
                isCollapsed: true,
                contentPadding: _contentPadding,
                border: _border,
                focusedBorder: _borderFocus,
                disabledBorder: _border,
                enabledBorder: _border,
                errorBorder: _border,
                focusedErrorBorder: _borderFocus,
              ),
            ),
          ),
        ),
        if (hasError)
          Positioned(
            bottom: 0,
            child: Container(
                child: Text(errorMessage ?? '').bodyExtraSmallRegular(
                    style: const TextStyle(
              color: BrechoColors.responseDanger,
            ))),
          ),
      ],
    );
  }
}

class BrechoTextWithSuffixIconOverOpacity extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final BrechoTextField child;

  const BrechoTextWithSuffixIconOverOpacity({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          right: BrechoSpacing.viii,
          top: BrechoSpacing.none,
          bottom: BrechoSpacing.none,
          child: Icon(
            icon,
            size: 20,
            color: iconColor,
          ),
        )
      ],
    );
  }
}
