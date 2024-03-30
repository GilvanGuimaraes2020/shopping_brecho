import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/register_sale/sale_payment_type/sale_payment_type_model.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'register_sale_controller.g.dart';

class RegisterSaleController = _RegisterSaleController
    with _$RegisterSaleController;

abstract class _RegisterSaleController with Store {
  final BuyAndSaleProductStore buyAndSaleStore;

  _RegisterSaleController(this.buyAndSaleStore);

  bool autoValidateAlways = false;

  bool paymentIsValid = false;

  @action
  Future<void> onSelectSaleClient(dynamic value) async =>
      buyAndSaleStore.onSelectSaleClient(value);

  @action
  Future<List<Map<String, dynamic>>> getClients(String? keyword) async =>
      buyAndSaleStore.getClients(filters: {'keyword': keyword});

  @action
  Future<FreezedStatus> saveSale() async => buyAndSaleStore.saveSale();

  @action
  void onUpdatePaymentType(List<SalePaymentTypeModel> value) =>
      buyAndSaleStore.onUpdatePaymentType(value);

  @action
  String? validateClient(dynamic value) =>
      clientIsValid ? null : ValidatorHelper.requiredText;

  @action
  Future<void> registerBuySetPaymentType(dynamic value) async =>
      buyAndSaleStore.registerBuySetPaymentType(value);

  @action
  Future<void> onChangeSalePrice(dynamic value) async =>
      buyAndSaleStore.registerBuyOnChangeSalePrice(value);

  @action
  void registerSaleOnChangeDate(dynamic value) =>
      buyAndSaleStore.registerSaleOnChangeDate(value);

  @action
  void setOnChangeCustomerObservation(dynamic value) =>
      buyAndSaleStore.setOnChangeCustomerObservation(value);

  @computed
  TextEditingController get customerObservationCtl =>
      buyAndSaleStore.customerObservationCtl;

  @action
  String? validatePrice(dynamic value) =>
      priceIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? validateDate(dynamic value) =>
      dateIsValid ? null : ValidatorHelper.requiredText;

  @computed
  bool get clientIsValid => buyAndSaleStore.registerSaleClientModel != null;

  @computed
  bool get priceIsValid =>
      buyAndSaleStore.registerSalePrice.isNotNullAndNotEmpty;

  @computed
  bool get dateIsValid =>
      ValidatorHelper.dateIsValid(buyAndSaleStore.registerSaleDate);

  @computed
  bool get formIsValid =>
      clientIsValid &&
      paymentIsValid && dateIsValid;
}
