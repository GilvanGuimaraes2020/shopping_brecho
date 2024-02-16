import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/helpers/debouncer/debouncer.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/utils/modal_dialog/modal_dialog.dart';

class BrechoDropDown extends StatefulWidget {
  final bool enabled;
  final String? label;
  final List<String>? selectItems;
  final Function(dynamic)? onSelectItem;
  final String? titleDrop;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool autovalidate;
  final bool autoValidateAlways;
  final Widget? trailing;
  final Function()? onActionTrailing;

  const BrechoDropDown(
      {super.key,
      this.enabled = true,
      required this.onSelectItem,
      required this.label,
      required this.selectItems,
      required this.titleDrop,
      this.controller,
      this.validator,
      this.autovalidate = false,
      this.autoValidateAlways = false,
      this.trailing,
      this.onActionTrailing});

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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: Opacity(
        opacity: !widget.enabled ? 0.4 : 1,
        child: BrechoTextField(
          controller: _controller,
          validator: widget.validator,
          autovalidate: widget.autovalidate,
          autoValidateAlways: widget.autoValidateAlways,
          onTap: () async {
            final value = await _showModal() as String?;
            setState(() {
              _controller.text =
                  value.isNotNullAndNotEmpty ? value.toString() : '';
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
    return BrechoDialog.showModalBottomSheet(
        context: context,
        builder: (context) {
          return Material(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text(widget.titleDrop ?? '').labelLargeRegular(),
                  backgroundColor: BrechoColors.monoWhite,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      vertical: BrechoSpacing.viii,
                      horizontal: BrechoSpacing.x),
                  sliver: SliverList(
                      delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(widget.selectItems?.length ?? 0,
                          (index) {
                        return GestureDetector(
                          onTap: () {
                            widget.onSelectItem!(index);

                            Navigator.of(context)
                                .pop(widget.selectItems![index]);
                          },
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: BrechoColors.neutral7))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: BrechoSpacing.x,
                                  horizontal: BrechoSpacing.iv),
                              child: Row(
                                children: [
                                  Text(widget.selectItems![index])
                                      .bodyMediumRegular(),
                                  const Expanded(child: SizedBox()),
                                  if (widget.trailing != null) ...{
                                    InkWell(
                                      onTap: () => widget.onActionTrailing,
                                      child:
                                          widget.trailing ?? const SizedBox(),
                                    )
                                  }
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    )
                  ])),
                )
              ],
            ),
          );
        }).then((value) => value);
  }
}

class BrechoDropDownWithFilter extends StatefulWidget {
  final bool enabled;
  final Function(String? title, String? subtitle) onSelectItem;
  final String? titleDrop;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool autovalidate;
  final bool autoValidateAlways;
  final List<String>? subtitles;
  final List<String>? titles;
  final Widget? trailing;
  final Function()? onActionTrailing;
  final List<String>? dataTrailing;
  final Future<List<String>?> Function({String? keyword})? asyncData;

  const BrechoDropDownWithFilter({
    super.key,
    this.enabled = true,
    required this.onSelectItem,
    required this.titleDrop,
    this.controller,
    this.validator,
    this.autovalidate = false,
    this.autoValidateAlways = false,
    this.subtitles,
    this.titles,
    this.trailing,
    this.onActionTrailing,
    this.dataTrailing,
    this.asyncData,
  });

  @override
  State<BrechoDropDownWithFilter> createState() =>
      _BrechoDropDownWithFilterState();
}

class _BrechoDropDownWithFilterState extends State<BrechoDropDownWithFilter> {
  List<String>? filteredTitle = [];
  List<String>? filteredSubtitle = [];
  List<String>? filteredDataTrailing = [];

  final TextEditingController _searchController = TextEditingController();
  TextEditingController _controller = TextEditingController();
  final _debounce = Debouncer(miliseconds: 500);

  void _onChangedSearchField(String value) {
    _debounce.run(() {
      if (widget.asyncData == null) {
        filteredTitle?.clear();
        filteredSubtitle?.clear();
        if (value.isEmpty) {
          filteredTitle = [...widget.titles ?? []];
        } else {
          List<int> indexes = [];
          indexes = widget.titles
                  ?.asMap()
                  .entries
                  .where((element) =>
                      element.value.toLowerCase().contains(value.toLowerCase()))
                  .map((e) => e.key)
                  .toList() ??
              [];
          filteredTitle = indexes.map((e) {
            if (widget.dataTrailing != null) {
              filteredDataTrailing?.add(widget.dataTrailing![e]);
            }
            if (widget.subtitles != null) {
              filteredSubtitle?.add(widget.subtitles![e]);
            }
            return widget.titles![e];
          }).toList();
        }
        setState(() {});
      } else {
        widget.asyncData?.call(keyword: value);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    filteredTitle = [...widget.titles ?? []];
    filteredSubtitle = [...widget.subtitles ?? []];
    filteredDataTrailing = [...widget.dataTrailing ?? []];
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: Opacity(
        opacity: !widget.enabled ? 0.4 : 1,
        child: BrechoTextField(
          controller: _controller,
          validator: widget.validator,
          autovalidate: widget.autovalidate,
          autoValidateAlways: widget.autoValidateAlways,
          onTap: () async {
            final value = await _showModal() as String?;
            setState(() {
              _controller.text =
                  value.isNotNullAndNotEmpty ? value.toString() : '';
            });
          },
          readOnly: true,
          label: widget.titleDrop,
          suffixIcon: BrechoIcons.keyboard_arrow_down,
        ),
      ),
    );
  }

  Future<dynamic> _showModal() async {
    return BrechoDialog.showModalBottomSheet(
        context: context,
        builder: (context) {
          return Material(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text(widget.titleDrop ?? '').labelLargeRegular(),
                  backgroundColor: BrechoColors.monoWhite,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      vertical: BrechoSpacing.viii,
                      horizontal: BrechoSpacing.x),
                  sliver: SliverList(
                      delegate: SliverChildListDelegate([
                    BrechoTextField(
                      controller: _searchController,
                      label: 'Digite o nome...',
                      onChanged: (p0) => _onChangedSearchField(p0),
                    ),
                    const SizedBox(
                      height: BrechoSpacing.xvi,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          List.generate(filteredTitle?.length ?? 0, (index) {
                        return GestureDetector(
                          onTap: () {
                            widget.onSelectItem(filteredTitle![index],
                                filteredSubtitle![index]);

                            Navigator.of(context).pop(filteredTitle![index]);
                          },
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: BrechoColors.neutral7))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: BrechoSpacing.x,
                                  horizontal: BrechoSpacing.iv),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(filteredTitle![index])
                                          .bodyMediumRegular(),
                                      Text(filteredSubtitle![index])
                                          .bodySmallMedium(),
                                    ],
                                  ),
                                  const Expanded(child: SizedBox()),
                                  if (widget.trailing != null) ...{
                                    InkWell(
                                      onTap: () => widget.onActionTrailing,
                                      child:
                                          widget.trailing ?? const SizedBox(),
                                    )
                                  } else if (filteredDataTrailing
                                      .isNotNullAndNotEmpty) ...{
                                    Text(filteredDataTrailing?[index] ?? '')
                                        .bodySmallMedium()
                                  }
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    )
                  ])),
                )
              ],
            ),
          );
        }).then((value) => value);
  }
}
