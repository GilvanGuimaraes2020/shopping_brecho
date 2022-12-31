import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';
import 'package:shopping_brecho/app/core/models/account_register_model/account_register_model.dart';

abstract class IAccountRepositoy {
  Future<AccountAlert> getAccountAlert();
  Future<void> getMovementAccountControl();
  Future<AccountRegister> getMovementAccountRegister();
  Future<void> registerAccount(
      {required Map<String, dynamic> payload,
      required String doc,
      required String collection});
}
