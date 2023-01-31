import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/client_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/client_model/client_model.dart';

class ClientRepository implements IClientRepository {
  final crashlytics = FirebaseCrashlytics.instance;
  final db = FirebaseFirestore.instance;

  ClientRepository();

  @override
  Future<Client> getClients() async {
    try {
      final reference = db.collection('shop').doc('shop').collection('clients');
      List<Map<String, dynamic>> json = [];
      json = await reference.get().then((value) => value.docs
          .map((e) => <String, dynamic>{'id': e.id}..addAll(e.data()))
          .toList());
      return Client.data(json.map((e) => ClientModel.fromJson(e)).toList());
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return  Client.error(e);
    }
  }
}
