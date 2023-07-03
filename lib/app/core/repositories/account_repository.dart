import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';
import 'package:shopping_brecho/app/core/models/account_register_model/account_register_model.dart';
import 'package:shopping_brecho/app/core/models/registers_model/registers_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';

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
  Future<AccountRegister> getMovementAccountRegister(String catalogDate) async {
    try {
      final List<AccountRegisterModel> listAccountRegister = [];

      final List<Map<String, dynamic>> teste = await db
          .collection('account_movement')
          .doc('account_register')
          .collection(catalogDate)
          .get()
          .then((value) => value.docs
              .map((e) => {'type_name': e.id, 'registers': e.data()})
              .toList());

      for (final data in teste) {
        final registers = data['registers']['register'] as List;
        final List<RegistersModel> listRegisters = registers
            .map((e) => RegistersModel.fromJson(e as Map<String, dynamic>))
            .toList();
        listAccountRegister.add(AccountRegisterModel(
            registers: listRegisters, typeName: data['type_name'] as String?));
      }
      if (listAccountRegister.isEmpty) {
        return const AccountRegister.empty();
      }
      return AccountRegister.data(listAccountRegister);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return const AccountRegister.error();
    }
  }

  @override
  Future<AccountRegister> getAccountRegisterFilter(
      Map<String, dynamic> query) async {
    try {
      final List<AccountRegisterModel> listAccountRegister = [];
      final List collectionRef = query['collection_ref'] as List;
      final distinctRefs = collectionRef.toSet().toList();

      for (final element in distinctRefs) {
        final List<Map<String, dynamic>> teste = await db
            .collection('account_movement')
            .doc('account_register')
            .collection(element as String)
            .get()
            .then((value) => value.docs
                .map((e) => {'type_name': e.id, 'registers': e.data()})
                .toList());

        for (final data in teste) {
          final registers = data['registers']['register'] as List;
          final List<RegistersModel> listRegisters = registers
              .map((e) => RegistersModel.fromJson(e as Map<String, dynamic>))
              .toList();
          listAccountRegister.add(AccountRegisterModel(
              registers: listRegisters,
              typeName: data['type_name'] as String?));
        }
      }

      if (listAccountRegister.isEmpty) {
        return const AccountRegister.empty();
      }

      return AccountRegister.data(listAccountRegister);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return const AccountRegister.error();
    }
  }

  @override
  Future<RequestStatus> registerAccount({
    required RegistersModel payload,
    required String category,
    required String shortDate,
  }) async {
    final Map<String, dynamic> toJson = payload.toJson();
    final String bankToSave = payload.accountBank ?? 'undefined';
    final double valueToIncrement = payload.accountValue ?? 0;
    try {
      final batch = db.batch();

      final accountRegister = db
          .collection('account_movement')
          .doc('account_register')
          .collection(shortDate)
          .doc(category);

      batch.set(
          accountRegister,
          {
            'register': FieldValue.arrayUnion([toJson])
          },
          SetOptions(merge: true));

      final accountControl =
          db.collection('account_movement').doc('account_control');

      batch.set(
          accountControl,
          {
            bankToSave: {
              shortDate: FieldValue.increment(valueToIncrement),
              'total_value': FieldValue.increment(valueToIncrement)
            }
          },
          SetOptions(merge: true));

      await batch.commit();

      return const RequestStatus.success();
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return const RequestStatus.error();
    }
  }
}
