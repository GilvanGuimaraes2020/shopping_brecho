import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal.dart';
import 'package:shopping_brecho/app/core/interfaces/client_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/models/client_model/client_model.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';
import 'package:shopping_brecho/app/core/models/product_model/product_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

part 'register_buy_controller.g.dart';

class RegisterBuyController = _RegisterBuyControllerBase
    with _$RegisterBuyController;

abstract class _RegisterBuyControllerBase with Store {
  final IClientRepository _clientRepository;
  final IProductRepository _productRepository;
  final IRemoteConfig _remoteConfig;

  _RegisterBuyControllerBase(
      this._clientRepository, this._productRepository, this._remoteConfig) {
    init();
  }

  void init() {
    getProducts();
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
  Client client = const Client.none();

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
  Future<List<AsyncDataModel>> getClients(String keyword) async {
    client = const Client.loading();
    client = await _clientRepository.getClients(keyword.toUpperCase());
    return client.maybeWhen(
        data: (client) => client
            .map((e) =>
                AsyncDataModel(title: e.name ?? '', subtitle: e.phone ?? ''))
            .toList(),
        orElse: () => []);
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
  Future<void> getProducts() async {
    product = const Product.loading();
    product = await _productRepository.getProducts();
  }

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
  List<String>? get titles => listClient.map((e) => e.name ?? '').toList();

  @computed
  List<String>? get subtitles => listClient.map((e) => e.phone ?? '').toList();

  @computed
  List<ClientModel> get listClient =>
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
      client is ClientData &&
      requestStatus is RequestStatusSuccess;
}
