// ignore_for_file: equal_elements_in_set

import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class Accordeon extends StatefulWidget {
  final String title;
  final Function(String, String, String) onFilter;
  const Accordeon({super.key, required this.title, required this.onFilter});

  @override
  State<Accordeon> createState() => _AccordeonState();
}

class _AccordeonState extends State<Accordeon> {
  bool _toogle = false;
  final startDateCtl = MaskedTextController(mask: '00/00/0000');
  final endDateCtl = MaskedTextController(mask: '00/00/0000');
  final keyWordCtl = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _toogle = !_toogle;
            });
          },
          child: Row(
            children: [
              const SizedBox(
                width: BrechoSpacing.xx,
              ),
              Text(widget.title).bodyMediumBold(),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.x),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, anim) => ScaleTransition(
                    scale: anim,
                    child: child,
                  ),
                  child: _toogle
                      ? const Icon(BrechoIcons.keyboard_arrow_down)
                      : const Icon(BrechoIcons.keyboard_arrow_right),
                ),
              ),
            ],
          ),
        ),
        if (_toogle) ...{
          BrechoTextField(
            label: 'Data inicial',
            controller: startDateCtl,
          ),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoTextField(
            label: 'Data Final',
            controller: endDateCtl,
          ),
          const SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoTextField(
            label: 'Busca por palavra...',
            controller: keyWordCtl,
          ),
          Padding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(BrechoSpacing.viii),
                    color: BrechoColors.primaryBlue5),
                child: MaterialButton(
                  padding: const EdgeInsets.all(BrechoSpacing.viii),
                  onPressed: () async {
                    if (startDateCtl.text.isNotEmpty) {
                      _toogle = !_toogle;
                      widget.onFilter(startDateCtl.text, endDateCtl.text, keyWordCtl.text);
                      setState(() {});
                    } else {
                      BrechoSnackbar.show(
                          text: 'Informe data inicial',
                          brechoSnackbarStatus: BrechoSnackbarStatus.warning);
                    }
                  },
                  child: const Text('Salvar'),
                ),
              )),
        },
        const SizedBox(
          height: BrechoSpacing.xvi,
        ),
      ],
    );
  }
}
