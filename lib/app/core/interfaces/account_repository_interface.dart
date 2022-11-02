

import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';

abstract class IAccountRepositoy{
  
  Future<AccountAlert> getAccountAlert();
}
