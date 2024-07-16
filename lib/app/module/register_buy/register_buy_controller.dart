import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';
import 'package:shopping_brecho/app/core/models/product_pendency/product_pendency_model.dart';
import 'package:shopping_brecho/app/core/models/product_relational_model/product_relational_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'register_buy_controller.g.dart';

class RegisterBuyController = _RegisterBuyControllerBase
    with _$RegisterBuyController;

abstract class _RegisterBuyControllerBase with Store {
  final BuyAndSaleProductStore buyAndSaleStore;

  _RegisterBuyControllerBase(this.buyAndSaleStore);

  @observable
  bool autoValidateAlways = true;

  @observable
  List<LabelValueModel>? paymentTypeList;

  @observable
  RequestStatus requestStatus = const RequestStatus.none();

  Future<void> loadData() async {
    Future.wait([
      buyAndSaleStore.getAllProducts(),
      buyAndSaleStore.getPaymentType(),
      buyAndSaleStore.getAllPendency()
    ]);
  }

  @action
  void setAutoValidateAlways(dynamic value) {
    autoValidateAlways = value as bool;
  }

  @action
  Future<FreezedStatus> saveProductStock() async =>
      buyAndSaleStore.saveProductStock();

  @action
  Future<List<Map<String, dynamic>>> getClients(String? keyword) async =>
      buyAndSaleStore.getClients(filters: {'keyword': keyword});

  @action
  Future<void> onChangePrice(dynamic value) async =>
      buyAndSaleStore.registerBuyOnChangePrice(value);

  @action
  Future<void> setCustomerName(dynamic value) async =>
      buyAndSaleStore.registerBuySetClientName(value);

  @action
  Future<void> onSelectClient(dynamic value) async =>
      buyAndSaleStore.onSelectClient(value);

  @action
  Future<void> registerBuySelectProduct(dynamic value) async =>
      buyAndSaleStore.registerBuySelectProduct(value);

  @action
  Future<void> setProductColor(dynamic value) async =>
      buyAndSaleStore.setProductColor(value);

  @action
  Future<void> registerBuySetPaymentType(dynamic value) async =>
      buyAndSaleStore.registerBuySetPaymentType(value);

  @action
  void registerBuyOnChangeDate(dynamic value) =>
      buyAndSaleStore.registerBuyOnChangeDate(value);

  @action
  void onSelectPendency(int pendencyId) =>
      buyAndSaleStore.onSelectPendency(pendencyId);

  @action
  String? validateClient(dynamic value) =>
      clientIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateProduct(dynamic value) =>
      productIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validatePrice(dynamic value) =>
      priceIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validatePaymentType(dynamic value) =>
      paymentTypeIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateDate(dynamic value) =>
      dateIsValid ? null : ValidatorHelper.requiredText;

  @computed
  FreezedStatus<List<CustomerModel>> get client => buyAndSaleStore.client;

  @computed
  FreezedStatus<List<ProductRelationalModel>> get products =>
      buyAndSaleStore.products;

  @computed
  bool get priceIsValid =>
      buyAndSaleStore.registerBuyPrice.isNotNullAndNotEmpty;

  @computed
  bool get dateIsValid =>
      ValidatorHelper.dateIsValid(buyAndSaleStore.registerbuyDate);

  @computed
  bool get clientIsValid => buyAndSaleStore.registerClientModel != null;

  @computed
  bool get productIsValid => buyAndSaleStore.registerBuyProductIndex != -1;

  @computed
  bool get paymentTypeIsValid => buyAndSaleStore.paymentTypeIndex != -1;

  @computed
  FreezedStatus<List<ProductPendencyModel>> get productPendencyAll =>
      buyAndSaleStore.productPendencyAll;

  @computed
  ObservableList<int> get pendencySelecteds =>
      buyAndSaleStore.pendencySelecteds;

  @computed
  bool get formIsValid =>
      priceIsValid &&
      dateIsValid &&
      clientIsValid &&
      productIsValid &&
      paymentTypeIsValid;

  @computed
  bool get isLoading =>
      products is FreezedStatusLoading ||
      client is FreezedStatusLoading ||
      requestStatus is RequestStatusLoading;

  @computed
  bool get saveProductIsLoading =>
      buyAndSaleStore.saveProductStatus is FreezedStatusLoading;
}
