import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_register_model.dart';

class AccountRepository implements IAccountRepositoy {
  final db = FirebaseFirestore.instance;
  AccountRepository();

  @override
  Future<AccountAlert> getAccountAlert() async {
    final alertModel = <AccountAlertModel>[];
    final data = await db
        .collection('account_registration_alert')
        .get()
        .then((value) => value.docs);
    for (final element in data) {
      alertModel.add(AccountAlertModel.fromJson(element.data()));
    }
    return AccountAlert.data(alertModel);
  }

  @override
  Future<void> getMovementAccountControl() async {
    await db
        .collection('account_movement')
        .doc('account_control')
        .get()
        .then((value) => value.data());
  }

  @override
  Future<AccountRegister> getMovementAccountRegister() async {
    final List<AccountRegisterModel> listAccountRegister = [];
    final data = await db
        .collection('account_movement')
        .doc('account_register')
        .collection('2022_10')
        .doc('supermarket')
        .get()
        .then((value) => value.data()?.values.first as List);
    for (final e in data) {
      listAccountRegister
          .add(AccountRegisterModel.fromJson(e as Map<String, dynamic>));
    }
    return AccountRegister.data(listAccountRegister);
  }
}
