import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';

part 'register_expense_controller.g.dart';

class RegisterExpenseController = _RegisterExpenseController
    with _$RegisterExpenseController;

abstract class _RegisterExpenseController with Store {
  final IRemoteConfig _rcService;
  _RegisterExpenseController(this._rcService);

  final priceCtl = TextEditingController();
  final descriptionCtl = TextEditingController();
  final dataCtl = TextEditingController();

  @observable
  List<LabelValueModel>? categoryList;

  @action
  void init() {
    categoryList = _rcService.getCategory();
  }

  @action
  void setDropValue(dynamic value) {}

  @action
  void onSelectCategory(String? data) {
    debugPrint(data);
  }

  @action
  void onSelectPayType(String? data) {
    debugPrint(data);
  }

  @action
  void setCountPay(String? value) {
    debugPrint(value);
  }

  @action
  void saveData() {}

  @computed
  List<String> get categoryNames =>
      categoryList?.map((e) => e.label ?? '').toList() ?? [];
}
