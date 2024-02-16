import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';
import 'package:shopping_brecho/app/core/models/product_model/product_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

part 'register_buy_controller.g.dart';

class RegisterBuyController = _RegisterBuyControllerBase
    with _$RegisterBuyController;

abstract class _RegisterBuyControllerBase with Store {
  final BuyAndSaleProductStore _buyAndSaleStore;

  final IRemoteConfig _remoteConfig;

  _RegisterBuyControllerBase(this._remoteConfig, this._buyAndSaleStore) {
    init();
  }

  Future<void> init() async {
    // getProducts();
    getPaymentList();
  }

  String price = '';
  String clientName = '';
  String productName = '';
  String dateBuy = '';
  String paymentType = '';
  String installment = '';

  @observable
  bool autoValidateAlaways = false;

  @observable
  Product product = const Product.none();

  @observable
  List<LabelValueModel>? paymentTypeList;

  @observable
  RequestStatus requestStatus = const RequestStatus.none();

  @action
  void setAutoValidateAlways(dynamic value) {
    autoValidateAlaways = value as bool;
  }

  @action
  Future<RequestStatus> saveData() async {
    return const RequestStatus.success();
  }

  @action
  Future<void> getPaymentList() async {
    requestStatus = const RequestStatus.loading();
    paymentTypeList = _remoteConfig.getPaymentType();
    if (paymentTypeList.isNotNullAndNotEmpty) {
      requestStatus = const RequestStatus.success();
    }
  }

  @action 
  Future<List<String>?> getClients({String? keyword}) async{
   await _buyAndSaleStore.getClients();
   return titles;
   }



  // @action
  // Future<void> getProducts() async {
  //   product = const Product.loading();
  //   product = await _productRepository.getProducts();
  // }

  @action
  Future<void> onChangePrice(String value) async {
    price = value;
  }

  @action
  Future<void> onSelectClient(String? title, String? subtitle) async {}

  @action
  Future<void> onSelectProduct(String? title, String? subtitle) async {}

  @action
  Future<void> onSelectPaymentType(dynamic value) async {}

  @action
  Future<void> onTapInstallment(dynamic value) async {
    installment = value as String;
  }

  @computed
  CustomerState get client => _buyAndSaleStore.client;

  @computed
  List<String>? get titles => client.maybeWhen(
      data: (customerModel) => customerModel.map((e) => e.name ?? '').toList(),
      orElse: () => []);

  @computed
  List<String>? get subtitles => client.maybeWhen(
      data: (customerModel) => customerModel.map((e) => e.phone ?? '').toList(),
      orElse: () => []);

  @computed
  List<CustomerModel> get listClient =>
      client.maybeWhen(data: (client) => client, orElse: () => []);

  @computed
  List<String>? get dataTrailing =>
      listProduct.map((e) => e.type ?? '').toList();

  @computed
  List<String>? get listProductBrand =>
      listProduct.map((e) => e.brand ?? '').toList();

  @computed
  List<String>? get listProductModel =>
      listProduct.map((e) => e.model ?? '').toList();

  @computed
  List<ProductModel> get listProduct =>
      product.maybeWhen(data: (productModel) => productModel, orElse: () => []);

  @computed
  List<String> get paymentTypeNames =>
      paymentTypeList?.map((e) => e.label ?? '').toList() ?? [];

  @computed
  bool get priceIsValid => price.isNotNullAndNotEmpty;

  @computed
  bool get dateIsValid => dateBuy.isNotNullAndNotEmpty;

  @computed
  bool get formIsValid => priceIsValid && dateIsValid;

  @computed
  bool get isLoading =>
      product is ProductData &&
      client is CustomerStateData &&
      requestStatus is RequestStatusSuccess;
}
