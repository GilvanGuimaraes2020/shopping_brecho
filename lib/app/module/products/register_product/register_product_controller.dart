import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'register_product_controller.g.dart';

class RegisterProductController = _RegisterProductController
    with _$RegisterProductController;

abstract class _RegisterProductController with Store {
  final BuyAndSaleProductStore buyAndSaleProductStore;

  _RegisterProductController(this.buyAndSaleProductStore);

  @observable
  bool autoValidateAlways = true;

  @action
  Future<void> loadData() async {
    Future.wait([
      buyAndSaleProductStore.getOldCategory(),
      buyAndSaleProductStore.getProductCategory(),
      buyAndSaleProductStore.getBrands()
    ]);
  }

//Implementar na sequencia para minimizar custo do banco
  @action
  Future<void> addProductList() async =>
      buyAndSaleProductStore.addProductList();

  @action
  Future<FreezedStatus> addAllProducts() async =>
      buyAndSaleProductStore.addAllProducts();

  @action
  void onSelectBrand(dynamic value) =>
      buyAndSaleProductStore.onSelectBrand(value);

  @action
  void onSelectOldCategory(dynamic value) =>
      buyAndSaleProductStore.onSelectOldCategory(value);

  @action
  void onSelectProductCategory(dynamic value) =>
      buyAndSaleProductStore.onSelectProductCategory(value);

  @action
  void onChangeModel(dynamic value) =>
      buyAndSaleProductStore.onChangeModel(value);

  @action
  String? validateOldCategory(String? value) =>
      oldCategoryIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateProductCategory(String? value) =>
      productCategoryIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateBrand(String? value) =>
      brandIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateModel(String? value) =>
      modelIsValid ? null : ValidatorHelper.requiredText;

  @computed
  int get countDataForDatabase => buyAndSaleProductStore.productsToSave.length;

  @computed
  TextEditingController get productModelCtl =>
      buyAndSaleProductStore.productModelCtl;

  @computed
  List<String> get brandNames => buyAndSaleProductStore.brandName;

  @computed
  List<String> get oldCategoryName => buyAndSaleProductStore.oldCategoryName;

  @computed
  List<String> get productCategoryName =>
      buyAndSaleProductStore.productCategoryName;

  @computed
  bool get oldCategoryIsValid =>
      buyAndSaleProductStore.oldCategoryIndex.isNotNullAndNotEmpty;

  @computed
  bool get productCategoryIsValid =>
      buyAndSaleProductStore.productCategoryIndex > -1;

  @computed
  bool get brandIsValid => buyAndSaleProductStore.brandIndex > -1;

  @computed
  bool get modelIsValid =>
      buyAndSaleProductStore.productModel.isNotNullAndNotEmpty;

  @computed
  bool get formIsValid =>
      oldCategoryIsValid &&
      productCategoryIsValid &&
      brandIsValid &&
      modelIsValid;
}
