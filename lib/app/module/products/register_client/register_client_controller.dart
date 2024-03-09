import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'register_client_controller.g.dart';

class RegisterClientController = _RegisterClientControllerBase
    with _$RegisterClientController;

abstract class _RegisterClientControllerBase with Store {
  final BuyAndSaleProductStore _buyAndSaleProductStore;

  _RegisterClientControllerBase(this._buyAndSaleProductStore);

  @observable
  bool autoValidateAlways = true;

  @action
  Future<FreezedStatus> addCustomer() async =>  _buyAndSaleProductStore.addCustomer();

  @action
  void setOnChangeCustomerName(dynamic value) =>
      _buyAndSaleProductStore.setOnChangeCustomerName(value);

  @action
  void setOnChangeCustomerPhone(dynamic value) =>
      _buyAndSaleProductStore.setOnChangeCustomerPhone(value);

  @action
  void setOnChangeCustomerAddress(dynamic value) =>
      _buyAndSaleProductStore.setOnChangeCustomerAddress(value);

  @action
  void setOnChangeCustomerNumber(dynamic value) =>
      _buyAndSaleProductStore.setOnChangeCustomerNumber(value);

  @action
  void setOnChangeCustomerNeighborhood(dynamic value) =>
      _buyAndSaleProductStore.setOnChangeCustomerNeighborhood(value);

  @action
  void setOnChangeCustomerObservation(dynamic value) =>
      _buyAndSaleProductStore.setOnChangeCustomerObservation(value);

  @action
  String? validateName(String? value) =>
      nameIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validatePhone(String? value) =>
      phoneIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateAddress(String? value) =>
      addressIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateNeighborhood(String? value) =>
      neighborhoodIsValid ? null : ValidatorHelper.requiredText;

  @computed
  TextEditingController get customerNameCtl =>
      _buyAndSaleProductStore.customerNameCtl;

  @computed
  TextEditingController get customerAddressCtl =>
      _buyAndSaleProductStore.customerAddressCtl;

  @computed
  TextEditingController get customerNeighborhoodCtl =>
      _buyAndSaleProductStore.customerNeighborhoodCtl;

  @computed
  TextEditingController get customerNumberCtl =>
      _buyAndSaleProductStore.customerNumberCtl;

  @computed
  TextEditingController get customerObservationCtl =>
      _buyAndSaleProductStore.customerObservationCtl;

  @computed
  MaskedTextController get customerPhoneCtl =>
      _buyAndSaleProductStore.customerPhoneCtl;

  @computed
  bool get phoneIsValid =>
      ValidatorHelper.phoneNumberIsValid(_buyAndSaleProductStore.customerPhone);

  @computed
  bool get nameIsValid =>
      ValidatorHelper.nameIsValid(_buyAndSaleProductStore.customerName);

  @computed
  bool get addressIsValid =>
      ValidatorHelper.nameIsValid(_buyAndSaleProductStore.customerAddress);

  @computed
  bool get neighborhoodIsValid =>
      ValidatorHelper.nameIsValid(_buyAndSaleProductStore.customerNeighborhood);

  @computed
  bool get formIsValid =>
      nameIsValid && phoneIsValid && addressIsValid && neighborhoodIsValid;
}
