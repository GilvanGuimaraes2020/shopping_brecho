import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/product_model/product_model.dart';

class ProductRepository implements IProductRepository {
  final db = FirebaseFirestore.instance;
  final crashlytics = FirebaseCrashlytics.instance;

  ProductRepository();

  @override
  Future<Product> getProducts() async {
    try {
      final reference = db
          .collection('shop')
          .doc('shop')
          .collection('products')
          .orderBy('type')
          .orderBy('brand');
      List<Map<String, dynamic>> json = [];
      json = await reference.get().then((value) => value.docs
          .map((e) => <String, dynamic>{'id': e.id}..addAll(e.data()))
          .toList());
      return Product.data(json.map((e) => ProductModel.fromJson(e)).toList());
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return Product.error(e);
    }
  }
}
