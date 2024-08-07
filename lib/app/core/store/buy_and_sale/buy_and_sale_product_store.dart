import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/customer_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/stock_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/brand/brand_model.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/label_value_helper_model/label_value_helper_model.dart';
import 'package:shopping_brecho/app/core/models/old_category/old_category_model.dart';
import 'package:shopping_brecho/app/core/models/payment_type/payment_type_model.dart';
import 'package:shopping_brecho/app/core/models/product_category/product_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_pendency/product_pendency_model.dart';
import 'package:shopping_brecho/app/core/models/product_pendency_table/product_pendency_table_model.dart';
import 'package:shopping_brecho/app/core/models/product_relational_model/product_relational_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_model.dart';
import 'package:shopping_brecho/app/core/models/register_sale/register_sale_model.dart';
import 'package:shopping_brecho/app/core/models/register_sale/sale_payment_type/sale_payment_type_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';

part 'buy_and_sale_product_store.g.dart';

class BuyAndSaleProductStore = _BuyAndSaleProductStore
    with _$BuyAndSaleProductStore;

abstract class _BuyAndSaleProductStore with Store {
  final IProductRepository _productRepository;
  final ICustomerRepository _customerRepository;
  final IStockRepository _stockRepository;

  _BuyAndSaleProductStore(
      this._productRepository, this._customerRepository, this._stockRepository);

  //product

  @observable
  FreezedStatus<List<ProductCategoryModel>> productCategory =
      const FreezedStatus.loading();

  @observable
  FreezedStatus<List<OldCategoryModel>> oldCategory =
      const FreezedStatus.loading();

  @observable
  FreezedStatus<List<CustomerModel>> client = const FreezedStatus.loading();

  @observable
  FreezedStatus<List<BrandModel>> brands = const FreezedStatus.loading();

  @observable
  String productModel = '';

  @observable
  int brandIndex = -1;

  @observable
  List<int> oldCategoryIndex = [];

  @observable
  int productCategoryIndex = -1;

  @observable
  List<ProductRelationalModel> productsToSave = [];

  @observable
  FreezedStatus<List<ProductRelationalModel>> products =
      const FreezedStatus.loading();

//customer

  @observable
  FreezedStatus<List<CustomerModel>> customer = const FreezedStatus.loading();

  @observable
  String customerName = '';

  @observable
  String customerPhone = '';

  @observable
  String customerAddress = '';

  @observable
  String customerNeighborhood = '';

  @observable
  String customerNumber = '';

  @observable
  FreezedStatus<List<ProductPendencyTableModel>> productPendency =
      const FreezedStatus.loading();

  @observable
  FreezedStatus<List<ProductPendencyModel>> productPendencyAll =
      const FreezedStatus.loading();

  @observable
  ObservableList<int> pendencySelecteds = ObservableList.of([]);

  @observable
  String customerObservations = '';

  @observable
  LabelValueHelperModel? registerSaleClientModel;

  //register client
  @observable
  LabelValueHelperModel? registerClientModel;

  @observable
  String registerBuyPrice = '';

  @observable
  String registerSalePrice = '';

  @observable
  String registerBuyClientName = '';

  @observable
  int paymentTypeIndex = -1;

  @observable
  int registerBuyProductIndex = -1;

  @observable
  FreezedStatus<List<PaymentTypeModel>> paymentType =
      const FreezedStatus.loading();

  @observable
  String registerbuyDate = '';

  @observable
  String registerSaleDate = '';

  String installment = '1';

  int currentProductStockId = -1;

  String? productColor;

  List<SalePaymentTypeModel> salePaymentList = [];

//product controllers
  final productModelCtl = TextEditingController(text: '');
  final brandCtl = TextEditingController(text: '');
//customer controllers
  final customerNameCtl = TextEditingController(text: '');
  final customerPhoneCtl = MaskedTextController(mask: '(00) 00000-0000');
  final customerAddressCtl = TextEditingController(text: '');
  final customerNeighborhoodCtl = TextEditingController(text: '');
  final customerNumberCtl = TextEditingController(text: '');
  final customerObservationCtl = TextEditingController(text: '');

  @action
  Future<List<Map<String, dynamic>>> getClients(
      {Map<String, String?>? filters}) async {
    client = const FreezedStatus.loading();
    client = await _customerRepository.getAllCustomer(filters: filters);
    return client.maybeWhen(
        data: (data) => data
            .map((e) => {
                  'label':
                      '${e.name} - ${FormatHelper.formatPhone(e.phone)}\n${e.address}',
                  'value': e.id
                })
            .toList(),
        orElse: () => []);
  }

  @action
  Future<void> getProductCategory() async {
    if (productCategory is! FreezedStatusData) {
      productCategory = const FreezedStatus.loading();
      productCategory = await _productRepository.getProductCategory();
    }
  }

  @action
  Future<void> getBrands() async {
    if (brands is! FreezedStatusData) {
      brands = const FreezedStatus.loading();
      brands = await _productRepository.getBrands();
    }
  }

  @action
  Future<void> getOldCategory() async {
    if (oldCategory is! FreezedStatusData) {
      oldCategory = const FreezedStatus.loading();
      oldCategory = await _productRepository.getOldCategory();
    }
  }

  @action
  void setProductModel(dynamic value) => productModel = value as String;

  @action
  void onSelectBrand(dynamic value) => brandIndex = value as int;

  @action
  void onSelectOldCategory(dynamic value) =>
      oldCategoryIndex = value as List<int>;

  @action
  void onSelectProductCategory(dynamic value) =>
      productCategoryIndex = value as int;

  @action
  void registerBuyOnChangePrice(dynamic value) =>
      registerBuyPrice = value as String;

  @action
  void registerBuyOnChangeSalePrice(dynamic value) =>
      registerSalePrice = value as String;

  @action
  void onUpdatePaymentType(List<SalePaymentTypeModel> value) {
    registerSalePrice = value
        .map((e) => e.value)
        .reduce((value, element) => value + element)
        .toString();
    salePaymentList = value;
  }

  @action
  void registerBuySetClientName(dynamic value) =>
      registerBuyClientName = value as String;

  @action
  void onChangeModel(dynamic value) => productModel = value as String;

  @action
  void setOnChangeCustomerName(dynamic value) => customerName = value as String;

  @action
  void setOnChangeCustomerPhone(dynamic value) =>
      customerPhone = value as String;

  @action
  void setOnChangeCustomerAddress(dynamic value) =>
      customerAddress = value as String;

  @action
  void setOnChangeCustomerNeighborhood(dynamic value) =>
      customerNeighborhood = value as String;

  @action
  void setOnChangeCustomerNumber(dynamic value) =>
      customerNumber = value as String;

  @action
  void setOnChangeCustomerObservation(dynamic value) =>
      customerObservations = value as String;

  @action
  Future<void> getAllCustomer({bool reload = false}) async {
    if (customer is! FreezedStatusData || reload) {
      customer = const FreezedStatus.loading();
      customer = await _customerRepository.getAllCustomer();
    }
  }

  @action
  Future<FreezedStatus> addCustomer() async {
    final payload = CustomerModel(
        name: customerName,
        phone: customerPhone.formatPhoneToSave(),
        address: customerAddress,
        neighborhood: customerNeighborhood,
        number: int.tryParse(customerNumber),
        observation: customerObservations);

    final result = await _customerRepository.addCustomer(payload: payload);

    if (result is FreezedStatusSuccess) {
      getAllCustomer(reload: true);
      resetFields();
    }

    return result;
  }

  @action
  void resetFields() {
    customerName = customerNameCtl.text = '';
    customerPhone = customerPhoneCtl.text = '';
    customerAddress = customerAddressCtl.text = '';
    customerNeighborhood = customerNeighborhoodCtl.text = '';
    customerNumber = customerNumberCtl.text = '';
  }

//Implementar na sequencia para consumir menos banco
  @action
  void addProductList() {
    final value = ProductRelationalModel(
        productCategoryId: productCategoryList[productCategoryIndex].id,
        oldCategoryId: oldCategoryList[oldCategoryIndex.first].id,
        oldCategoryIdList: oldCategoryIdList,
        brandId: brandList[brandIndex].id,
        model: productModel,
        createdAt: DateTime.now().toUtc());
    productsToSave.add(value);
  }

  @action
  Future<FreezedStatus> addAllProducts() async {
    final value = ProductRelationalModel(
        productCategoryId: productCategoryList[productCategoryIndex].id,
        oldCategoryId: oldCategoryList[oldCategoryIndex.first].id,
        oldCategoryIdList: oldCategoryIdList,
        brandId: brandList[brandIndex].id,
        model: productModel,
        createdAt: DateTime.now().toUtc());
    final result = await _productRepository.addProduct(value);

    result.maybeWhen(
        success: (data) {
          getAllProducts(reload: true);
        },
        orElse: () => null);
    return result;
  }

  @action
  Future<FreezedStatus> addProductPendency(
      List<ProductPendencyTableModel> selectedsPendency) async {
    return _productRepository.addPendencyList(selectedsPendency);
  }

  @action
  Future<void> getAllProducts({bool reload = false}) async {
    if (products is! FreezedStatusData || reload) {
      products = const FreezedStatus.loading();
      products = await _productRepository.getAllProducts();
      products.maybeWhen(
          data: (data) {
            productsToSave.clear();
            productsToSave = data;
          },
          orElse: () => null);
    }
  }

  @action
  Future<FreezedStatus> saveSale() async {
    final payload = RegisterSaleModel(
      customerId: registerSaleClientModel?.value as int,
      productStockId: currentProductStockId,
      createdAt: DateTime.now().toUtc().toString(),
      observation: customerObservations,
      sellerAt: FormatHelper.formatDateToApi(registerSaleDate),
      sellerPrice: double.tryParse(registerSalePrice),
    );

    return _stockRepository.saveSaleProduct(
        model: payload, paymentTypeList: salePaymentList);
  }

  @action
  Future<void> onSelectClient(dynamic value) async =>
      registerClientModel = value as LabelValueHelperModel;

  @action
  Future<void> onSelectSaleClient(dynamic value) async =>
      registerSaleClientModel = value as LabelValueHelperModel;

  @action
  Future<void> registerBuySelectProduct(dynamic value) async {
    registerBuyProductIndex = value as int;
  }

  @action
  Future<void> registerBuySetPaymentType(dynamic value) async {
    paymentTypeIndex = value as int;
  }

  @action
  Future<void> getPaymentType() async {
    paymentType = const FreezedStatus.loading();
    paymentType = await _productRepository.getPaymentType();
  }

  @action
  Future<void> onTapInstallment(dynamic value) async {
    installment = value as String;
  }

  @action
  void registerBuyOnChangeDate(dynamic value) =>
      registerbuyDate = value as String;
  
  @action
  void setProductColor(dynamic value) =>
      productColor = value as String;

  @action
  void registerSaleOnChangeDate(dynamic value) =>
      registerSaleDate = value as String;

  @action
  Future<FreezedStatus> saveProductStock() async {
    final payload = ProductStockModel(
      productId: productList[registerBuyProductIndex].id,
      customerId: int.tryParse(registerClientModel?.value.toString() ?? ''),
      purchasedAt: FormatHelper.formatDateToApi(registerbuyDate),
      createdAt: DateTime.now().toUtc().toString(),
      paymentTypeId: paymentTypeModelList.tryGet(paymentTypeIndex)?.id,
      price: double.tryParse(registerBuyPrice),
      color: productColor
    );

    return _stockRepository.saveProductStock(payload, pendencySelecteds);
  }

  @action
  Future<void> getPendencyByProductId() async {
    productPendency = const FreezedStatus.loading();
    productPendency = await _productRepository
        .getPendencyByProductId(currentProductStockId.toString());
  }

  @action
  void setCurrentProductStockId(dynamic value) =>
      currentProductStockId = value as int;

  @action
  Future<void> getAllPendency() async {
    productPendencyAll = const FreezedStatus.loading();
    productPendencyAll = await _stockRepository.getAllPendency();
  }

  @action
  void onSelectPendency(int pendencyId) {
    if (pendencySelecteds.contains(pendencyId)) {
      pendencySelecteds.removeWhere((element) => element == pendencyId);
    } else {
      pendencySelecteds.add(pendencyId);
    }
  }

  @computed
  List<String> get brandName =>
      brandList.map((e) => e.brandName ?? '').toList();

  @computed
  List<BrandModel> get brandList =>
      brands.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<String> get oldCategoryName => oldCategoryList
      .map((e) => '${e.categoryLabel}: ${e.categoryDescription}')
      .toList();

  @computed
  List<OldCategoryModel> get oldCategoryList =>
      oldCategory.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<String> get productCategoryName =>
      productCategoryList.map((e) => e.categoryName ?? '').toList();

  @computed
  List<ProductCategoryModel> get productCategoryList =>
      productCategory.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<CustomerModel> get customerList =>
      customer.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<String> get customerSelectItems => customer.maybeWhen(
      data: (data) =>
          data.map((e) => '${e.name}\n${e.phone}\n${e.address}').toList(),
      orElse: () => []);

  @computed
  List<ProductRelationalModel> get productList =>
      products.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<String> get productsSelectItems => products.maybeWhen(
      data: (data) => data
          .map((e) => '${e.categoryName}\n${e.brandName}-${e.model}')
          .toList(),
      orElse: () => []);

  @computed
  bool get isLoading =>
      brands is FreezedStatusLoading && oldCategory is FreezedStatusLoading;

  @computed
  List<int> get oldCategoryIdList =>
      oldCategoryIndex.map((e) => oldCategoryList[e].id!).toList();

  @computed
  List<PaymentTypeModel> get paymentTypeModelList =>
      paymentType.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<String> get paymentTypeNames =>
      paymentTypeModelList.map((e) => e.paymentName ?? '').toList();

  @computed
  bool get isCreditCard =>
      paymentTypeModelList.tryGet(paymentTypeIndex)?.paymentValue ==
      'CREDIT_CARD';
}
