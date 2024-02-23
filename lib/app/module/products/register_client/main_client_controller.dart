import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale_product_store.dart';

part 'main_client_controller.g.dart';

class MainClientController = _MainClientController with _$MainClientController;

abstract class _MainClientController with Store {
  final BuyAndSaleProductStore _buyAndSaleProductStore;

  _MainClientController(this._buyAndSaleProductStore);

  Future<void> init() async {
    _buyAndSaleProductStore.getAllCustomer();
  }

  @computed
  FreezedStatus<List<CustomerModel>> get customer => _buyAndSaleProductStore.customer;
}
