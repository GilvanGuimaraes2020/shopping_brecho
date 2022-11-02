import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_brecho/app/core/interfaces/teste_repository_interface.dart';

class TesteRepository implements ItesteRepository {
  final db = FirebaseFirestore.instance;

  TesteRepository();

  @override
  Future<Map<String, dynamic>> getTestFirebase() async {
    Map<String, dynamic> getFirebase = {};

    await db
        .collection('teste')
        .get()
        .then((value) => value.docs.forEach((element) {
              getFirebase = element.data();
            }));
    return getFirebase;
  }
}
