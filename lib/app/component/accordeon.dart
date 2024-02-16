// ignore_for_file: equal_elements_in_set

import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';

class Accordeon extends StatefulWidget {
  final String title;
  final Widget child;
  final bool Function()? onAction;
  const Accordeon(
      {super.key, required this.title, required this.child, this.onAction});

  @override
  State<Accordeon> createState() => _AccordeonState();
}

class _AccordeonState extends State<Accordeon> {
  bool _toogle = false;

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
          widget.child,
          const SizedBox(
            height: BrechoSpacing.viii,
          ),
          Padding(
              padding: const EdgeInsets.all(BrechoSpacing.viii),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(BrechoSpacing.viii),
                    color: BrechoColors.primaryBlue5),
                child: MaterialButton(
                  padding: const EdgeInsets.all(BrechoSpacing.viii),
                  onPressed: () {
                    final result = widget.onAction?.call();
                    if (result ?? false) {
                      _toogle = !_toogle;
                      setState(() {});
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
