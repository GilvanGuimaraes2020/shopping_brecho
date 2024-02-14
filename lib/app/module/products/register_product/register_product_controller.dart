import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'register_product_controller.g.dart';

class RegisterProductController = _RegisterProductController
    with _$RegisterProductController;

abstract class _RegisterProductController with Store {
  final BuyAndSaleProductStore _buyAndSaleProductStore;

  _RegisterProductController(this._buyAndSaleProductStore);

  @observable
  bool autoValidateAlways = true;

  @action
  Future<void> addProduct()async=> _buyAndSaleProductStore.addProduct();

  @action
  void onSelectBrand(dynamic value) => _buyAndSaleProductStore.onSelectBrand;

  @action
  void onSelectOldCategory(dynamic value) =>
      _buyAndSaleProductStore.onSelectOldCategory;

  @action
  void onSelectProductCategory(dynamic value) =>
      _buyAndSaleProductStore.onSelectProductCategory;

  @action
  void onChangeModel(dynamic value) => _buyAndSaleProductStore.onChangeModel;

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
  TextEditingController get productModelCtl =>
      _buyAndSaleProductStore.productModelCtl;

  @computed
  List<String> get brandNames => _buyAndSaleProductStore.brandName;

  @computed
  List<String> get oldCategoryName => _buyAndSaleProductStore.oldCategoryName;

  @computed
  List<String> get productCategoryName =>
      _buyAndSaleProductStore.productCategoryName;

  @computed
  bool get oldCategoryIsValid => _buyAndSaleProductStore.oldCategoryIndex > -1;

  @computed
  bool get productCategoryIsValid =>
      _buyAndSaleProductStore.productCategoryIndex > -1;

  @computed
  bool get brandIsValid => _buyAndSaleProductStore.brandIndex > -1;

  @computed
  bool get modelIsValid =>
      _buyAndSaleProductStore.productModel.isNotNullAndNotEmpty;

  @computed
  bool get formIsValid =>
      oldCategoryIsValid &&
      productCategoryIsValid &&
      brandIsValid &&
      modelIsValid;
}
