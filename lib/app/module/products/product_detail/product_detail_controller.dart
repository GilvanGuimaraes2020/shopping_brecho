import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_pendency/product_pendency_model.dart';
import 'package:shopping_brecho/app/core/models/product_pendency_table/product_pendency_table_model.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/buy_and_sale_product_store.dart';

part 'product_detail_controller.g.dart';

class ProductDetailController = _ProductDetailController
    with _$ProductDetailController;

abstract class _ProductDetailController with Store {
  final BuyAndSaleProductStore _buyAndSaleStore;

  _ProductDetailController(this._buyAndSaleStore) {
    _buyAndSaleStore.getAllPendency();
    _buyAndSaleStore.getPaymentType();
  }

  @observable
  FreezedStatus<List<ProductPendencyTableModel>> productPendency =
      const FreezedStatus.loading();


  List<int> selectedsPendency = [];

  Future<void> init({required int id}) async {
    _buyAndSaleStore.setCurrentProductStockId(id);
    await _buyAndSaleStore.getPendencyByProductId();
    productPendency = _buyAndSaleStore.productPendency;
  }

  @action
  Future<FreezedStatus> addPendency() async {
    if (selectedsPendency.isEmpty) {
      return const FreezedStatus.empty();
    }
    final models = selectedsPendency
        .map((e) => ProductPendencyTableModel(
            productPendencyId: e, productStockId: productStockId))
        .toList();

    return _buyAndSaleStore.addProductPendency(models);
  }

  @action
  void onSelectPendency(dynamic value) {
    selectedsPendency = value as List<int>;
  }

  @computed
  List<ProductPendencyModel> get pendencies =>
      _buyAndSaleStore.productPendencyAll
          .maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  bool get pendencyIsLoading =>
      _buyAndSaleStore.productPendencyAll is FreezedStatusLoading;

  @computed
  List<ProductPendencyTableModel> get productPendencyTableList =>
      productPendency.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  int get productStockId => _buyAndSaleStore.currentProductStockId;
}
