import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class BrechoTextTopDown extends StatefulWidget {
  final bool enabled;
  final String? label;
  final Function(String?)? onTap;
  const BrechoTextTopDown(
      {super.key,
      this.enabled = true,
      required this.label,
      required this.onTap});

  @override
  State<BrechoTextTopDown> createState() => _BrechoTextTopDownState();
}

class _BrechoTextTopDownState extends State<BrechoTextTopDown> {
  int countPay = 0;
  final _controller = TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: Opacity(
        opacity: !widget.enabled ? 0.4 : 1,
        child: Row(
          children: [
            Flexible(
              child: BrechoTextField(
                controller: _controller,
                readOnly: true,
                label: widget.label,
              ),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Container(
                        clipBehavior: Clip.hardEdge,
                        margin: const EdgeInsets.only(
                            bottom: BrechoSpacing.ii, left: BrechoSpacing.iv),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6)),
                            color: BrechoColors.neutral6),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                countPay += 1;
                                _controller.text = countPay.toString();
                                widget.onTap!(countPay.toString());
                              });
                            },
                            child: const Icon(BrechoIcons.arrow_drop_up))),
                  ),
                  Flexible(
                    child: Container(
                        clipBehavior: Clip.hardEdge,
                        margin: const EdgeInsets.only(
                            top: BrechoSpacing.ii, left: BrechoSpacing.iv),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                            color: BrechoColors.neutral6),
                        child: GestureDetector(
                            onTap: () {
                              if (countPay == 0) {
                                BrechoSnackbar.show(
                                    text: 'Parcelas não podem ser menor que 0!',
                                    brechoSnackbarStatus:
                                        BrechoSnackbarStatus.error);
                                return;
                              }
                              setState(() {
                                countPay -= 1;
                                _controller.text = countPay.toString();
                                widget.onTap!(countPay.toString());
                              });
                            },
                            child: const Icon(BrechoIcons.arrow_drop_down))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
