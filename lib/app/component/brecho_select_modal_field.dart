import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_dialog.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/core/models/label_value_helper_model/label_value_helper_model.dart';

class BrechoSelectModalField extends StatefulWidget {
  final String? label;
  final double padding;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final bool autovalidate;
  final bool showFilterBox;
  final bool disabled;
  final String selectTitle;
  final List<String> selectItems;
  final Function(dynamic value) onSelectItem;
  final bool multiple;
  final int fontStyleIndex;
  final List selecteds;
  final Future<List<String>> Function()? loadItems;
  final Future<List<Map<String, dynamic>>> Function(String?)? asyncItems;
  final bool loading;
  final bool forceReloadItems;
  final bool autoValidateAlways;
  final double? sheetMaxWidth;
  final Widget? customItems;
  final bool unfocus;
  final bool lineValidator;
  final bool isDense;
  final bool? allowEmpty;
  final bool Function(dynamic)? notAllowSelection;

  const BrechoSelectModalField({
    super.key,
    this.label,
    this.controller,
    this.padding = BrechoSpacing.xvi,
    this.validator,
    this.focusNode,
    this.autovalidate = false,
    this.showFilterBox = false,
    this.disabled = false,
    required this.selectTitle,
    this.selectItems = const [],
    required this.onSelectItem,
    this.multiple = false,
    this.fontStyleIndex = 0,
    this.selecteds = const [],
    this.loadItems,
    this.loading = false,
    this.forceReloadItems = false,
    this.autoValidateAlways = false,
    this.sheetMaxWidth = double.maxFinite,
    this.customItems,
    this.unfocus = false,
    this.lineValidator = false,
    this.asyncItems,
    this.isDense = false,
    this.allowEmpty,
    this.notAllowSelection,
  });

  @override
  BrechoSelectModalFieldState createState() => BrechoSelectModalFieldState();
}

class BrechoSelectModalFieldState extends State<BrechoSelectModalField> {
  late TextEditingController _controller;
  FocusNode? _focusNode;
  final _modalFieldKey = GlobalKey<FormState>();
  Size _widgetTotalSize = Size.zero;
  dynamic _currentValue;
  int qntInfoMinSize = 60;

  String qntInfo() {
    if (widget.selecteds.isEmpty ||
        widget.selecteds.length == chipTextList.length) {
      return '';
    }

    final qnt = widget.selecteds.length - chipTextList.length;

    if (qnt == 1) return '(+ $qnt item)';
    return '(+ $qnt itens)';
  }

  List<String> get chipTextList {
    if (widget.selecteds.isEmpty) {
      return [];
    }

    if (widget.asyncItems != null) {
      widget.selecteds.sort(
        (a, b) => (a as LabelValueHelperModel)
            .label
            .compareTo((b as LabelValueHelperModel).label),
      );
    } else {
      widget.selecteds.sort();
    }

    double chipSize = 0;
    final List<String> chipTextSelecteds = [];
    for (final e in widget.selecteds) {
      bool firstElement;
      String currentElement;
      if (widget.asyncItems != null) {
        e as LabelValueHelperModel;
        firstElement =
            (widget.selecteds.first as LabelValueHelperModel).value == e.value;
        currentElement = e.label;
      } else {
        e as int;
        firstElement = widget.selecteds.first == e;
        currentElement = widget.selectItems[e];
      }
      final double currentElementSize = (currentElement.length) * 10.5 +
          (chipTextSelecteds.isNotEmpty ? BrechoSpacing.ii : 0);
      if (chipSize + currentElementSize <= availabeWidthSize || firstElement) {
        chipTextSelecteds.add(currentElement);
        chipSize += currentElementSize;
      } else {
        break;
      }
    }
    chipTextSelecteds.removeWhere((element) => element.isEmpty);
    if (availabeWidthSize - chipSize < qntInfoMinSize &&
        widget.selecteds.length > 2) {
      chipTextSelecteds.removeLast();
    }
    return chipTextSelecteds;
  }

  double get availabeWidthSize =>
      MediaQuery.of(context).size.width -
      (BrechoSpacing.xxiv * 3 + BrechoSpacing.xvi);

  bool get isControllerNullOrIsMultiple =>
      widget.controller == null || widget.multiple;

  @override
  void initState() {
    super.initState();

    _currentValue = widget.selectItems
        .indexWhere((element) => widget.controller?.text == element);

    _calculateWidgetTotalSize();

    _controller = isControllerNullOrIsMultiple || widget.controller == null
        ? TextEditingController()
        : widget.controller!;

    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode!.addListener(() {
      if (mounted) setState(() {});
    });

    if (widget.multiple) {
      if (widget.selecteds.isEmpty) {
        _controller.text = '';
      } else {
        _controller.text = '.';
      }
    }
  }

  @override
  void dispose() {
    if (isControllerNullOrIsMultiple) {
      _controller.dispose();
    }

    if (widget.focusNode == null) {
      _focusNode!.dispose();
    }

    super.dispose();
  }

  @override
  void didUpdateWidget(BrechoSelectModalField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.multiple) {
      if (widget.selecteds.isEmpty) {
        _controller.text = '';
      } else {
        _controller.text = '.';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: _modalFieldKey,
      children: <Widget>[
        BrechoTextField(
          onTap: () =>
              widget.disabled || widget.loading ? null : _showBottomSheet(),
          label: widget.label,
          enabled: !widget.disabled && !widget.loading,
          readOnly: true,
          focusNode: _focusNode,
          suffixIcon: widget.asyncItems == null
              ? BrechoIcons.menu_down
              : BrechoIcons.search,
          suffixIconColor: BrechoColors.secondaryBlue5,
          showLoader: widget.loading,
          autovalidate: widget.autovalidate,
          validator: widget.validator,
          autoValidateAlways: widget.autoValidateAlways,
          isSelectModalField: true,
          lineValidator: widget.lineValidator,
          hintText: _controller.text,
          floatingLabelBehavior:
              _controller.text.isNotEmpty || _focusNode?.hasFocus == true
                  ? FloatingLabelBehavior.always
                  : FloatingLabelBehavior.auto,
          isDense: widget.isDense,
        ),
        if (widget.selecteds.isNotEmpty)
          Positioned(
            top: 3,
            left: BrechoSpacing.viii,
            child: GestureDetector(
              onTap: () => widget.disabled ? null : _showBottomSheet(),
              child: Row(
                children: [
                  ...List.generate(chipTextList.length, (index) {
                    return Container(
                      margin: const EdgeInsets.only(top: BrechoSpacing.viii),
                      constraints: BoxConstraints(
                          maxWidth: _widgetTotalSize.width * 0.6),
                      padding: const EdgeInsets.symmetric(
                          vertical: BrechoSpacing.viii,
                          horizontal: BrechoSpacing.xii),
                      decoration: BoxDecoration(
                          color: BrechoColors.neutral9,
                          borderRadius: BorderRadius.circular(500)),
                      child: Text(
                        chipTextList[index],
                        overflow: TextOverflow.ellipsis,
                      ).labelSmallRegular(),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: BrechoSpacing.viii, top: BrechoSpacing.viii),
                    child: Text(qntInfo()).labelSmallRegular(
                        style: const TextStyle(color: BrechoColors.neutral5)),
                  )
                ],
              ),
            ),
          )
      ],
    );
  }

  Future<void> _showBottomSheet() async {
    final padding = widget.sheetMaxWidth != double.maxFinite
        ? EdgeInsets.symmetric(
                horizontal: (MediaQuery.of(context).size.width -
                        widget.sheetMaxWidth!) /
                    2)
            .copyWith(top: 80)
        : EdgeInsets.zero;

    await BrechoDialog.showModalBottomSheet(
      context: context,
      padding: padding,
      expand: widget.showFilterBox,
      enableDrag: true,
      builder: (context) => BrechoSelectModal(
        showFilterBox: widget.showFilterBox,
        title: widget.selectTitle,
        items: widget.selectItems,
        multiple: widget.multiple,
        fontStyleIndex: widget.fontStyleIndex,
        selecteds: widget.selecteds,
        loadItems: widget.loadItems,
        asyncItems: widget.asyncItems,
        onSelectItem: onSelectItem,
        forceReloadItems: widget.forceReloadItems,
        customItems: widget.customItems,
        baseKeyNameForItems: getKeyName(widget.key),
        allowEmpty: widget.allowEmpty,
      ),
    );

    if (widget.unfocus && mounted) {
      FocusScope.of(context).requestFocus(FocusNode());
    }
  }

  void onSelectItem(dynamic value) {
    final notAllowSelection = widget.notAllowSelection?.call(value) ?? false;
    if (!notAllowSelection) {
      dynamic currentValue;
      if (widget.asyncItems != null) {
        if (widget.multiple) {
          currentValue = List<LabelValueHelperModel>.from(value as List);
        } else {
          currentValue = value as LabelValueHelperModel;
          _controller.text = value.label;
        }
      } else {
        if (widget.multiple) {
          currentValue = List<int>.from(value as List);
        } else {
          currentValue = value as int;
          _controller.text = widget.selectItems[value];
        }
      }

      if (currentValue != _currentValue || widget.multiple) {
        widget.onSelectItem(currentValue);
        // Form.of(context).widget.onChanged?.call();
      }
      _currentValue = currentValue;
    }
  }

  void _calculateWidgetTotalSize() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final box =
          _modalFieldKey.currentContext?.findRenderObject() as RenderBox?;
      _widgetTotalSize = box?.size ?? Size.zero;
      setState(() {});
    });
  }

  String? getKeyName(Key? key) {
    if (key == null) {
      return null;
    }

    final String str = key.toString();

    const find = "'";

    final startIndex = str.indexOf(find);
    final endIndex = str.indexOf(find, startIndex + find.length);

    return str.substring(startIndex + find.length, endIndex);
  }
}
