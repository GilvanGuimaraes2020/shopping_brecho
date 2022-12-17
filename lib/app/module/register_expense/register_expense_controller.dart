import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'register_expense_controller.g.dart';

class RegisterExpenseController = _RegisterExpenseController with _$RegisterExpenseController;

abstract class _RegisterExpenseController with Store{

  _RegisterExpenseController();

  final priceCtl = TextEditingController();
}
