import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:shopping_brecho/app/component/brecho_checkbox.dart';
import 'package:shopping_brecho/app/component/brecho_empty_state.dart';
import 'package:shopping_brecho/app/component/brecho_shimmer.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/core/models/label_value_helper_model/label_value_helper_model.dart';
import 'package:shopping_brecho/app/helpers/debouncer/debouncer.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

class BrechoSelectModal extends StatefulWidget {
  final String title;
  final List<String> items;
  final bool showFilterBox;
  final bool multiple;
  final int? fontStyleIndex;
  final List<dynamic>? selecteds;
  final Future<List<String>> Function()? loadItems;
  final Future<List<Map<String, dynamic>>> Function(String?)? asyncItems;
  final Function(dynamic value)? onSelectItem;
  final bool forceReloadItems;
  final Widget? customItems;
  final String? baseKeyNameForItems;
  final bool? allowEmpty;

  const BrechoSelectModal({
    super.key,
    required this.title,
    required this.items,
    this.showFilterBox = false,
    this.multiple = false,
    this.fontStyleIndex,
    this.selecteds,
    this.loadItems,
    this.asyncItems,
    this.onSelectItem,
    this.forceReloadItems = false,
    this.customItems,
    this.baseKeyNameForItems,
    this.allowEmpty,
  });

  @override
  BrechoSelectModalState createState() => BrechoSelectModalState();
}

class BrechoSelectModalState extends State<BrechoSelectModal> {
  TextEditingController? _controller;
  List<String> _items = [];
  List<String> _filteredItems = [];
  List<LabelValueHelperModel> _asyncItems = [];
  final List _selecteds = [];
  bool _retryLoad = false;
  String lastKeyWord = '';
  final _asyncItemDebouncer = Debouncer(miliseconds: 500);

  final List _styles = [
    const Text('').labelSmallRegular().style,
    const TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      height: 1,
      letterSpacing: -0.5,
      color: Color(0xff768095),
    )
  ];

  @override
  void initState() {
    if (widget.showFilterBox) {
      _controller = TextEditingController();
    }

    _selecteds.addAll(widget.selecteds!);
    _items = _filteredItems = widget.items;

    if ((widget.forceReloadItems || _items.isEmpty) &&
        widget.loadItems != null) {
      _retryLoad = true;
      _loadItems();
    }

    if (widget.asyncItems != null) {
      _asyncItems = List<LabelValueHelperModel>.from(widget.selecteds ?? []);
    }

    super.initState();
  }

  @override
  void dispose() {
    if (_controller != null) {
      _controller!.dispose();
    }

    super.dispose();
  }

  Future<void> _loadItems() async {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      widget.loadItems?.call().then((value) {
        setState(() {
          _items = _filteredItems = value;
          _retryLoad = false;
        });
      });
    });
  }

  Future<void> _retry() async {
    setState(() {
      _retryLoad = true;
      _items = [];
    });
    _loadItems();
  }

  Future<void> getAsyncItems(String term) async {
    _asyncItemDebouncer.run(() async {
      final searchTerm = term.removeAccents.replaceAll(' ', '').toLowerCase();
      final items = await widget.asyncItems!(searchTerm);
      _asyncItems =
          items.map((e) => LabelValueHelperModel.fromJson(e)).toList();
      _retryLoad = false;
      setState(() {});
    });
  }

  void filterByText(String term) {
    if (term.isEmpty) {
      _filteredItems = _items;
    } else {
      _filteredItems = _items.where((e) {
        return e.removeAccents
            .replaceAll(' ', '')
            .toLowerCase()
            .contains(term.removeAccents.replaceAll(' ', '').toLowerCase());
      }).toList();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double dragIndicatorMargin =
        ((MediaQuery.of(context).size.width - BrechoSpacing.xxiv) / 2)
            .ceilToDouble();

    return Theme(
      // ignore: avoid_redundant_argument_values
      data: Theme.of(context).copyWith(),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: Material(
          color: BrechoColors.monoWhite,
          child: SafeArea(
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification? overscroll) {
                overscroll!.disallowIndicator();
                return true;
              },
              child: CustomScrollView(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                slivers: [
                  // AppBar has 8 pixel in bottom padding
                  SliverAppBar(
                      pinned: true,
                      title: Padding(
                        padding: const EdgeInsets.only(
                          top: BrechoSpacing.xxiv,
                        ),
                        child: Text(widget.title).labelSmallSemiBold(),
                      ),
                      backgroundColor: BrechoColors.monoWhite,
                      centerTitle: true,
                      automaticallyImplyLeading: false,
                      elevation: 0,
                      toolbarHeight: 46,
                      flexibleSpace: Container(
                        margin: EdgeInsets.only(
                            top: BrechoSpacing.viii,
                            left: dragIndicatorMargin,
                            right: dragIndicatorMargin),
                        height: BrechoSpacing.iv,
                        width: BrechoSpacing.xxiv,
                        decoration: BoxDecoration(
                          color: BrechoColors.neutral8,
                          borderRadius: BorderRadius.circular(
                            500,
                          ),
                        ),
                      ),
                      bottom: (widget.showFilterBox &&
                              (_items.isNotEmpty || widget.asyncItems != null))
                          ? PreferredSize(
                              preferredSize: const Size(double.maxFinite, 70),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: BrechoSpacing.viii,
                                  left: BrechoSpacing.xxiv,
                                  right: BrechoSpacing.xxiv,
                                ),
                                child: BrechoTextField(
                                    controller: _controller,
                                    hintText: 'Digite para buscar...',
                                    onChanged: (term) {
                                      if (term.isEmpty || lastKeyWord == term) {
                                        return;
                                      }

                                      lastKeyWord = term;
                                      if (widget.asyncItems != null) {
                                        setState(() {
                                          _retryLoad = true;
                                        });
                                        getAsyncItems(term);
                                      } else {
                                        filterByText(term);
                                      }
                                    }),
                              ))
                          : null),

                  SliverList(
                      delegate: SliverChildListDelegate.fixed([
                    _widget,
                    const SizedBox(height: BrechoSpacing.xlviii),
                  ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get _widget {
    if (_retryLoad) {
      return _loading;
    }

    if (widget.asyncItems == null) {
      if (_items.isEmpty) {
        if (widget.allowEmpty ?? false) {
          return BrechoEmptyState(
            title: 'Sem opções!',
            description: 'Não existe opções disponíveis para esse campo.',
            buttonTitle: 'Voltar',
            onPressed: () => Navigator.of(context).pop(),
          );
        }

        return BrechoEmptyState(
          title: 'Ops!',
          description: 'Não foi possível carregar os dados.',
          buttonTitle: 'Carregar dados',
          onPressed: _retry,
        );
      }

      if (widget.customItems != null) {
        return widget.customItems!;
      }

      return _list;
    }

    return _asyncList;
  }

  Widget get _list {
    return Column(
        children: List.generate(_filteredItems.length, (index) {
      final bool isSelected = _selecteds.contains(index);

      return Column(
        children: <Widget>[
          InkWell(
            key: widget.baseKeyNameForItems != null
                ? Key('${widget.baseKeyNameForItems}.$index')
                : null,
            onTap: () {
              HapticFeedback.lightImpact();
              if (widget.multiple) {
                _toogleSelected(index);
              } else {
                int value = index;

                if (widget.showFilterBox) {
                  value = _items.indexOf(_filteredItems[index]);
                }

                widget.onSelectItem!(value);
                Navigator.of(context).pop();
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                  left: BrechoSpacing.xxiv,
                  right: BrechoSpacing.xxiv,
                  top: BrechoSpacing.xxiv,
                  bottom: BrechoSpacing.xxiv),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      _filteredItems[index],
                      softWrap: !widget.multiple,
                      overflow: widget.multiple ? TextOverflow.ellipsis : null,
                      style: _styles[widget.fontStyleIndex!] as TextStyle?,
                    ),
                  ),
                  if (widget.multiple)
                    BrechoCheckbox(
                      value: isSelected,
                      onChanged: (isSelected) {
                        _toogleSelected(index);
                      },
                    ),
                ],
              ),
            ),
          ),
          const Divider()
        ],
      );
    }));
  }

  Widget get _asyncList {
    if (_asyncItems.isEmpty) {
      return Container(
        margin: EdgeInsets.only(
          top: _selecteds.isEmpty
              ? MediaQuery.of(context).size.height / 3
              : BrechoSpacing.xxiv,
        ),
        child: Center(
          child: const Text('Comece a digitar para pesquisar')
              .labelExtraSmallSemiBold(),
        ),
      );
    }

    return Column(
      children: _asyncItems.map((e) => _item(e)).toList(),
    );
  }

  Widget _item(LabelValueHelperModel item) {
    final isSelected = _selecteds.any((element) => element.value == item.value);

    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            HapticFeedback.lightImpact();
            _toogleSelected(item);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              left: BrechoSpacing.xxiv,
              right: BrechoSpacing.xxiv,
              top: BrechoSpacing.xxiv,
              bottom: BrechoSpacing.xxiv,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Text(
                    item.label,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ).labelSmallRegular(),
                ),
                BrechoCheckbox(
                  value: isSelected,
                  onChanged: (isSelected) {
                    _toogleSelected(item);
                  },
                ),
              ],
            ),
          ),
        ),
        const Divider()
      ],
    );
  }

  Widget get _loading => SizedBox(
        width: double.infinity,
        child: BrechoShimmer(
          child: Column(
            children: List.generate(50, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: BrechoSpacing.xxiv,
                    ),
                    child: BrechoShimmerContainer(
                      radius: 6,
                      width: MediaQuery.of(context).size.width,
                      height: 18,
                    ),
                  ),
                  const Divider(),
                ],
              );
            }),
          ),
        ),
      );

  Future<void> _toogleSelected(dynamic index) async {
    final type = index.runtimeType;

    switch (type) {
      case int:
        _selecteds.contains(index)
            ? _selecteds.remove(index)
            : _selecteds.add(index);
        widget.onSelectItem!(_selecteds);
        break;
      case LabelValueHelperModel:
        index as LabelValueHelperModel;
        final indexAsyncItem =
            _selecteds.indexWhere((element) => element.value == index.value);
        if (indexAsyncItem != -1) {
          _selecteds.removeAt(indexAsyncItem);
        } else {
          _selecteds.add(index);
          if (widget.multiple) {
            widget.onSelectItem!(_selecteds);
          } else {
            widget.onSelectItem!(index);
            Navigator.of(context).pop();
          }
        }
        break;
      default:
    }

    setState(() {});
  }
}
