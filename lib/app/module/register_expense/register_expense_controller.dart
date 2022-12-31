import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';
import 'package:shopping_brecho/app/helpers/format_helper/mask_text.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'register_expense_controller.g.dart';

class RegisterExpenseController = _RegisterExpenseController
    with _$RegisterExpenseController;

abstract class _RegisterExpenseController with Store {
  final IRemoteConfig _rcService;
  final IAccountRepositoy _accountRepositoy;
  _RegisterExpenseController(this._rcService, this._accountRepositoy);

  final priceCtl = TextEditingController();
  final descriptionCtl = TextEditingController();
  final buyDateCtl = maskedDate();
  final installmentCtl = TextEditingController();

  @observable
  bool autoValidateAlways = false;

  @observable
  List<LabelValueModel>? categoryList;

  @observable
  List<LabelValueModel>? paymentTypeList;

  @observable
  LabelValueModel? categoryModel;

  @observable
  LabelValueModel? paymentModel;

  @observable
  String? description;

  @observable
  String? buyDate;

  @observable
  String? price;

  @observable
  String? installment;

  @action
  void setAutoValidateAlways(dynamic value) {
    autoValidateAlways = value as bool;
  }

  @action
  void init() {
    categoryList = _rcService.getCategory();
    paymentTypeList = _rcService.getPaymentType();
  }

  @action
  void setCategoryModel(dynamic value) {
    categoryModel = categoryList?[value as int];
  }

  @action
  void setDescription(String? value) {
    description = value?.trim();
  }

  @action
  void setBuyDate(String? value) {
    buyDate = value?.trim();
  }

  @action
  void setPrice(String? value) {
    price = value?.trim();
  }

  @action
  void setPaymentType(dynamic value) {
    paymentModel = paymentTypeList?[value as int];
  }

  @action
  void setinstallment(dynamic value) {
    installment = value.toString();
  }

  @action
  void saveData() {
    _accountRepositoy.registerAccount(payload: {
      'account_value': price,
      'account_date': buyDate,
      'description': description,
      'category': categoryModel?.value
    }, doc: categoryModel?.value ?? '', collection: '2022_12');
  }

  //Validate String
  @action
  String? validateCategory(dynamic value) {
    return categoryIsValid ? null : ValidatorHelper.requiredText;
  }

  @action
  String? validateDescription(dynamic value) {
    return categoryIsValid ? null : ValidatorHelper.requiredText;
  }

  @action
  String? validateDate(dynamic value) {
    return dateIsValid ? null : ValidatorHelper.dateText;
  }

  @action
  String? validatePaymentType(dynamic value) {
    return paymentIsValid ? null : ValidatorHelper.dateText;
  }

  @computed
  List<String> get categoryNames =>
      categoryList?.map((e) => e.label ?? '').toList() ?? [];

  @computed
  List<String> get paymentTypeNames =>
      paymentTypeList?.map((e) => e.label ?? '').toList() ?? [];

//validation
  @computed
  bool get descriptionIsvalid => description.isNotNullAndNotEmpty;

  @computed
  bool get priceIsValid => price.isNotNullAndNotEmpty;

  @computed
  bool get categoryIsValid => categoryModel != null;

  @computed
  bool get paymentIsValid => paymentModel != null;

  @computed
  bool get dateIsValid => ValidatorHelper.dateIsValid(buyDate);

  //validation form
  @computed
  bool get formIsValid =>
      descriptionIsvalid &&
      priceIsValid &&
      categoryIsValid &&
      paymentIsValid &&
      dateIsValid;
}
