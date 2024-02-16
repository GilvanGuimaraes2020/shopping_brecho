import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';

class BrechoCheckbox extends StatelessWidget {
  final bool? value;
  final Function(bool?)? onChanged;
  final bool? hasWhiteBackground;
  final bool isCheckable;
  final Color activeColor;

  const BrechoCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.hasWhiteBackground,
    this.isCheckable = true,
    this.activeColor = BrechoColors.primaryBlue5,
  });

  bool get isDisabled => onChanged == null;

  @override
  Widget build(BuildContext context) {
    if (isCheckable) {
      return Theme(
        data: Theme.of(context).copyWith(
          disabledColor: BrechoColors.neutral8,
          unselectedWidgetColor: BrechoColors.neutral7,
        ),
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: hasWhiteBackground == true ? BrechoColors.monoWhite : null,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Checkbox(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)),
            value: value,
            onChanged: isDisabled
                ? null
                : (value) {
                    HapticFeedback.lightImpact();
                    onChanged!.call(value);
                  },
            activeColor: activeColor,
            checkColor:
                isDisabled ? BrechoColors.neutral6 : BrechoColors.monoWhite,
          ),
        ),
      );
    } else {
      return IgnorePointer(
        child: Theme(
          data: Theme.of(context).copyWith(
            disabledColor: BrechoColors.neutral8,
            unselectedWidgetColor: BrechoColors.neutral7,
          ),
          child: value!
              ? SizedBox(
                  width: 18,
                  height: 18,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    value: true,
                    onChanged: (v) {},
                    activeColor: BrechoColors.primaryBlue5,
                    checkColor: BrechoColors.monoWhite,
                  ),
                )
              : Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: BrechoColors.neutral8,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Center(
                    child: Icon(
                     BrechoIcons.menu_down,
                      color: BrechoColors.neutral6,
                      size: 15,
                    ),
                  ),
                ),
        ),
      );
    }
  }
}
