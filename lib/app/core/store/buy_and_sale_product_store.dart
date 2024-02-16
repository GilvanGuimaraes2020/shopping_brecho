import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/customer_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/brand/brand_model.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/old_category/old_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_category/product_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_relational_model/product_relational_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

part 'buy_and_sale_product_store.g.dart';

class BuyAndSaleProductStore = _BuyAndSaleProductStore
    with _$BuyAndSaleProductStore;

abstract class _BuyAndSaleProductStore with Store {
  final IProductRepository _productRepository;
  final ICustomerRepository _customerRepository;

  _BuyAndSaleProductStore(this._productRepository, this._customerRepository);

  //product

  @observable
  ProductCategoryState productCategory = const ProductCategoryState.loading();

  @observable
  OldCategoryState oldCategory = const OldCategoryState.loading();

  @observable
  CustomerState client = const CustomerState.loading();

  @observable
  BrandState brands = const BrandState.loading();

  @observable
  String productModel = '';

  @observable
  int brandIndex = -1;

  @observable
  int oldCategoryIndex = -1;

  @observable
  int productCategoryIndex = -1;

  @observable
  List<ProductRelationalModel> productsToSave = [];

  @observable
  ProductState products = const ProductState.loading();

//customer

  @observable
  CustomerState customer = const CustomerState.loading();

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
  String customerObservations = '';

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
  Future<void> getClients({Map<String, String?>? filters}) async {
    client = const CustomerState.loading();
    client = await _productRepository.getCustomer();
  }

  @action
  Future<void> getProductCategory() async {
    productCategory = const ProductCategoryState.loading();
    productCategory = await _productRepository.getProductCategory();
  }

  @action
  Future<void> getBrands() async {
    brands = const BrandState.loading();
    brands = await _productRepository.getBrands();
  }

  @action
  Future<void> getOldCategory() async {
    oldCategory = const OldCategoryState.loading();
    oldCategory = await _productRepository.getOldCategory();
  }

  @action
  void setProductModel(dynamic value) => productModel = value as String;

  @action
  void onSelectBrand(dynamic value) => brandIndex = value as int;

  @action
  void onSelectOldCategory(dynamic value) => oldCategoryIndex = value as int;

  @action
  void onSelectProductCategory(dynamic value) =>
      productCategoryIndex = value as int;

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
  Future<void> getAllCustomer() async {
    customer = const CustomerState.loading();
    customer = await _customerRepository.getAllCustomer();
  }

  @action
  Future<CustomerState> addCustomer() async {
    final payload = CustomerModel(
        name: customerName,
        phone: customerPhone.formatPhoneToSave(),
        address: customerAddress,
        neighborhood: customerNeighborhood,
        number: int.tryParse(customerNumber));

    final result = await _customerRepository.addCustomer(payload: payload);

    if (result is CustomerStateSuccess) {
      getAllCustomer();
    }

    return result;
  }

  @action
  void addProductList() {
    final value = ProductRelationalModel(
        productCategoryId: productCategoryList[productCategoryIndex].id,
        oldCategoryId: oldCategoryList[oldCategoryIndex].id,
        brandId: brandList[brandIndex].id,
        model: productModel,
        createdAt: DateTime.now().toUtc());
    productsToSave.add(value);
  }

  @action
  Future<void> addAllProducts() async {
    final result = await _productRepository.addProduct(productsToSave);

    result.maybeWhen(
        success: (data) {
          getAllProducts();
        },
        orElse: () => null);
  }

  @action
  Future<void> getAllProducts() async {
    products = const ProductState.loading();
    products = await _productRepository.getAllProducts();
    products.maybeWhen(
        data: (data) {
          productsToSave.clear();
          productsToSave = data;
        },
        orElse: () => null);
  }

  @computed
  List<String> get brandName =>
      brandList.map((e) => e.brandName ?? '').toList();

  @computed
  List<BrandModel> get brandList =>
      brands.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<String> get oldCategoryName =>
      oldCategoryList.map((e) => e.categoryLabel ?? '').toList();

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
  List<String> get customerSelectItems => customer.maybeWhen(
      data: (data) =>
          data.map((e) => '${e.name}\n${e.phone}\n${e.address}').toList(),
      orElse: () => []);
}
