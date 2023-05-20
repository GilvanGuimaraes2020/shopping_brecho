import 'package:shopping_brecho/app/core/models/product_model/product_model.dart';

abstract class IProductRepository{
  Future<Product> getProducts();
}
