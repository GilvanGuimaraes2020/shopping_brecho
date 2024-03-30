import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/brecho_filters_model/brecho_filters_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/label_value_helper_model/label_value_helper_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/stock_repository.dart';
import 'package:shopping_brecho/app/helpers/debouncer/debouncer.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'product_list_controller.g.dart';

class ProductListController = _ProductListController
    with _$ProductListController;

abstract class _ProductListController with Store {
  final StockRepository _stockRepository;

  _ProductListController(this._stockRepository);

  final TextEditingController nameCtl = TextEditingController(text: '');

  String name = '';

  final debouncerName = Debouncer(miliseconds: 500);

  void init() {
    getStockProductAll();

    saleType = [
      LabelValueHelperModel(label: 'Vendido', value: true),
      LabelValueHelperModel(label: 'Em estoque', value: false),
    ];
  }

  bool isSold = false;

  String? startDate;
  String? finishDate;

  List<LabelValueHelperModel> saleType = [];

  BrechoFiltersModel filters = BrechoFiltersModel(isSold: false);

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
    if (filter['is_sold'] as bool) {
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
    value as int;
    isSold = saleType[value].value as bool;
  }

  @action
  void applyFilters() {
    filters = BrechoFiltersModel(
      isSold: isSold,
      startDate: FormatHelper.formatYYYYMMDD(startDate),
      finishedDate: FormatHelper.formatYYYYMMDD(finishDate),
    );
  }

  @computed
  bool get startDateIsValid =>
      ValidatorHelper.dateIsValid(startDate.toString()) || startDate == null;

  @computed
  bool get finishDateIsValid =>
      ValidatorHelper.dateIsValid(finishDate.toString()) || finishDate == null;

  @computed
  bool get formIsValid => startDateIsValid && finishDateIsValid;
}
