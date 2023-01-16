import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';
import 'package:shopping_brecho/app/core/models/account_register_model/account_register_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';

abstract class IAccountRepositoy {
  Future<AccountAlert> getAccountAlert();
  Future<void> getMovementAccountControl();
  Future<AccountRegister> getMovementAccountRegister(String catalogDate);
  Future<RequestStatus> registerAccount(
      {required Map<String, dynamic> payload,
      required String category,
      required String shortDate});
  Future<AccountRegister> getAccountRegisterFilter(Map<String, dynamic> query);
}
