import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/stock_repository.dart';
import 'package:shopping_brecho/app/helpers/debouncer/debouncer.dart';

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
  }

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
    stockList = const FreezedStatus.loading();
    final filters = {'is_sold': false};
    stockList = await _stockRepository.getAllProductsStock(filters: filters);
  }
}
