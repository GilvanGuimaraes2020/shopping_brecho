import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/helpers/debouncer/debouncer.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

class AsyncDataModel {
  String title;
  String subtitle;
  String? dataTrailing;

  AsyncDataModel(
      {required this.title, required this.subtitle, this.dataTrailing});
}

class BrechoSelectModal extends StatefulWidget {
  final String modalTitle;
  final List<String>? titles;
  final List<String>? subtitles;
  final List<String>? dataTrailing;
  final Function(String)? onChangedSearchField;
  final Function(String?, String?) onSelectItem;
  final Function()? onActionTrailing;
  final Widget? trailing;
  final bool? hasFloatingButton;
  final Function()? floatingAction;

  final Future<List<AsyncDataModel>> Function(String)? asyncData;

  const BrechoSelectModal({
    super.key,
    required this.modalTitle,
    this.onChangedSearchField,
    required this.onSelectItem,
    this.onActionTrailing,
    this.titles,
    this.subtitles,
    this.asyncData,
    this.dataTrailing,
    this.trailing,
    this.hasFloatingButton,
    this.floatingAction,
  });

  @override
  State<BrechoSelectModal> createState() => _BrechoSelectModalState();
}

class _BrechoSelectModalState extends State<BrechoSelectModal> {
  List<String>? filteredTitle = [];
  List<String>? filteredSubtitle = [];
  List<String>? filteredDataTrailing = [];

  final _debounce = Debouncer(miliseconds: 500);

  Future<void> _onChangedSearchField(String value) async {
    _debounce.run(() async {
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(widget.modalTitle).labelLargeRegular(),
            backgroundColor: BrechoColors.monoWhite,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
                vertical: BrechoSpacing.viii, horizontal: BrechoSpacing.x),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              BrechoTextField(
                label: 'Digite o nome...',
                onChanged: (p0) async {
                  if (widget.asyncData != null && p0.isNotEmpty) {
                    List<AsyncDataModel>? asyncDataModel = [];
                    filteredTitle?.clear();
                    filteredSubtitle?.clear();
                    asyncDataModel = await widget.asyncData!(p0);

                    for (final AsyncDataModel e in asyncDataModel) {
                      filteredTitle?.add(e.title);
                      filteredSubtitle?.add(e.subtitle);
                    }
                    setState(() {});
                  } else {
                    _onChangedSearchField(p0);
                  }
                },
              ),
              const SizedBox(
                height: BrechoSpacing.xvi,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(filteredTitle?.length ?? 0, (index) {
                  return GestureDetector(
                    onTap: () {
                      widget.onSelectItem(
                          filteredTitle![index], filteredSubtitle![index]);

                      Navigator.of(context).pop(filteredTitle![index]);
                    },
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: BrechoColors.neutral7))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: BrechoSpacing.x,
                            horizontal: BrechoSpacing.iv),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(filteredTitle![index]).bodyMediumRegular(),
                                Text(filteredSubtitle![index])
                                    .bodySmallMedium(),
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            if (widget.trailing != null) ...{
                              InkWell(
                                onTap: () => widget.onActionTrailing,
                                child: widget.trailing ?? const SizedBox(),
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
      floatingActionButton: (widget.hasFloatingButton ?? false)
          ? FloatingActionButton.small(
              onPressed: (widget.floatingAction == null)
                  ? null
                  : widget.floatingAction,
              child: const Icon(
                BrechoIcons.add,
                color: BrechoColors.monoWhite,
              ))
          : null,
    );
  }
}
