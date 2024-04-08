import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/component/chips_filter.dart';
import 'package:shopping_brecho/app/core/models/brecho_filters_model/brecho_filters_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/label_value_helper_model/label_value_helper_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/stock_repository.dart';
import 'package:shopping_brecho/app/helpers/debouncer/debouncer.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'product_list_controller.g.dart';

class ProductListController = _ProductListController
    with _$ProductListController;

abstract class _ProductListController with Store {
  final StockRepository _stockRepository;

  _ProductListController(this._stockRepository);

  final TextEditingController nameCtl = TextEditingController(text: '');

  final TextEditingController filterStartDateCtl =
      MaskedTextController(mask: '00/00/0000');

  final TextEditingController filterEndDateCtl =
      MaskedTextController(mask: '00/00/0000');

  final TextEditingController isSoldCtl = TextEditingController();

  final TextEditingController categoryCtl = TextEditingController();

  final debouncerName = Debouncer(miliseconds: 500);

  void init() {
    getStockProductAll();

    saleType = [
      LabelValueHelperModel(label: 'Vendido', value: true),
      LabelValueHelperModel(label: 'Em estoque', value: false),
    ];

    categoryBy = [
      LabelValueHelperModel(label: 'Preço', value: 'buy_price'),
      LabelValueHelperModel(label: 'Data', value: 'ps.purchased_at'),
      LabelValueHelperModel(label: 'Categoria', value: 'c.category_name'),
    ];
  }

  bool isSold = false;

  List<LabelValueHelperModel> saleType = [];

  List<LabelValueHelperModel> categoryBy = [];

  BrechoFiltersModel filters = BrechoFiltersModel(isSold: false);

  @observable
  String? startDate;

  @observable
  String? finishDate;

  @observable
  String name = '';

  @observable
  int soldIndex = -1;

  @observable
  int categoryIndex = -1;

  @observable
  FreezedStatus<List<ProductStockListModel>> stockList =
      const FreezedStatus.loading();

  @action
  void setName(dynamic value) {
    debouncerName.run(() {
      name = value as String;
    });
  }

  @action
  Future<void> getStockProductAll() async {
    final filter = filters.toJson();
    stockList = const FreezedStatus.loading();
    if (isSold) {
      stockList = await _stockRepository.getAllProductsSale(filters: filter);
    } else {
      stockList = await _stockRepository.getAllProductsStock(filters: filter);
    }
  }

  @action
  void assignFilter(dynamic value) {
    filters = value as BrechoFiltersModel;
    getStockProductAll();
  }

  @action
  void resetAndGetAllStock() {
    clearFilter();
    getStockProductAll();
  }

  @action
  void onChangeStartDate(dynamic value) {
    startDate = value as String;
  }

  @action
  void onChangeFinishDate(dynamic value) {
    finishDate = value as String;
  }

  @action
  void onSelectSale(dynamic value) {
    soldIndex = value as int;
    isSoldCtl.text = saleType[value].label;
    isSold = saleType[value].value as bool;
  }

  @action
  void onSelectCategory(dynamic value) {
    categoryIndex = value as int;
    categoryCtl.text = categoryBy[value].label;
  }

  @action
  void applyFilters() {
    filters = BrechoFiltersModel(
        isSold: isSold,
        keyword: name,
        startDate: FormatHelper.formatYYYYMMDD(startDate),
        finishedDate: FormatHelper.formatYYYYMMDD(finishDate),
        orderBy: (categoryBy.tryGet(categoryIndex)?.value as String?) ??
            categoryBy[1].value.toString());
  }

  @action
  void clearFilter() {
    isSold = false;

    soldIndex = -1;

    name = nameCtl.text = '';

    filterStartDateCtl.clear();
    startDate = null;

    finishDate = null;
    filterEndDateCtl.clear();

    categoryIndex = -1;

    categoryCtl.clear();

    isSoldCtl.clear();

    applyFilters();
  }

  @computed
  bool get startDateIsValid =>
      ValidatorHelper.dateIsValid(startDate.toString()) || startDate == null;

  @computed
  bool get finishDateIsValid =>
      ValidatorHelper.dateIsValid(finishDate.toString()) || finishDate == null;

  @computed
  List<ChipItemModel> get filterChipsItem {
    final List<ChipItemModel> chips = [];

    if (soldIndex == 0) {
      chips.add(ChipItemModel(
          label: saleType[soldIndex].label,
          action: () {
            isSold = false;
            soldIndex = -1;
          }));
    }

    if (name.isNotEmpty) {
      chips.add(ChipItemModel(
        label: name,
        action: () {
          nameCtl.clear();
          name = '';
        },
      ));
    }

    if (startDate.isNotNullAndNotEmpty) {
      chips.add(ChipItemModel(
        label: startDate!,
        action: () {
          filterStartDateCtl.clear();
          startDate = '';
        },
      ));
    }

    if (finishDate.isNotNullAndNotEmpty) {
      chips.add(ChipItemModel(
        label: finishDate!,
        action: () {
          filterEndDateCtl.clear();
          finishDate = '';
        },
      ));
    }

    if (categoryIndex != -1) {
      chips.add(ChipItemModel(
          label: categoryBy[categoryIndex].label,
          action: () {
            categoryIndex = -1;
            categoryCtl.text = '';
          }));
    }

    return chips;
  }

  @computed
  bool get formIsValid => startDateIsValid && finishDateIsValid;
}
