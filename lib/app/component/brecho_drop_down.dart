import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/utils/modal_dialog/modal_dialog.dart';

class BrechoDropDown extends StatefulWidget {
  final bool enabled;
  final String? label;
  final List<String>? selectItems;
  final Function(String?)? onSelectItem;
  final String? titleDrop;
  final TextEditingController? controller;
  const BrechoDropDown(
      {super.key,
      this.enabled = true,
      required this.onSelectItem,
      required this.label,
      required this.selectItems,
      required this.titleDrop,
      this.controller});

  @override
  State<BrechoDropDown> createState() => _BrechoDropDownState();
}

class _BrechoDropDownState extends State<BrechoDropDown> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? _controller;
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: Opacity(
        opacity: !widget.enabled ? 0.4 : 1,
        child: BrechoTextField(
          controller: _controller,
          onTap: () async {
            final dynamic value = await _showModal();
            setState(() {
              _controller.text = value.toString();
            });
          },
          readOnly: true,
          label: widget.label,
          suffixIcon: BrechoIcons.keyboard_arrow_down,
        ),
      ),
    );
  }

  Future<dynamic> _showModal() async {
    late String? data;
    return BrechoDialog.showModalBottomSheet(
        context: context,
        builder: (context) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(widget.titleDrop ?? '').h4Bold(),
                backgroundColor: BrechoColors.monoWhite,
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                  Column(
                    children:
                        List.generate(widget.selectItems?.length ?? 0, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: BrechoSpacing.x,
                            horizontal: BrechoSpacing.iv),
                        child: GestureDetector(
                          onTap: () {
                            widget.onSelectItem!(widget.selectItems?[index]);
                            data = widget.selectItems?[index];

                            Navigator.of(context).pop();
                          },
                          child: Row(
                            children: [
                              Text(widget.selectItems![index])
                                  .bodyLargeRegular(),
                              const Expanded(child: SizedBox()),
                              const Icon(BrechoIcons.done)
                            ],
                          ),
                        ),
                      );
                    }),
                  )
                ])),
              )
            ],
          );
        }).then((value) => data);
  }
}
