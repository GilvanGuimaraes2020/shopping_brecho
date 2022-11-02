import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';

class AccountRepository implements IAccountRepositoy {
  final db = FirebaseFirestore.instance;
  AccountRepository();

  @override
  Future<AccountAlert> getAccountAlert() async {
    final alertModel = <AccountAlertModel>[];
    await db
        .collection('account_registration_alert')
        .get()
        .then((value) => value.docs.forEach((element) {
              alertModel.add(AccountAlertModel.fromJson(element.data()));
            }));
    return AccountAlert.data(alertModel);
  }
}
