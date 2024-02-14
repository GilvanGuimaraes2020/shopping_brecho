import 'package:shopping_brecho/app/core/models/brand/brand_model.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/old_category/old_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_category/product_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_relational_model/product_relational_model.dart';

abstract class IProductRepository {
  Future<List<Map<String, dynamic>>> select(
      {List<String>? columns, required String tableName});
  Future<OldCategoryState> getOldCategory({List<String>? columns});
  Future<ProductCategoryState> getProductCategory({List<String>? columns});
  Future<List<Map<String, dynamic>>> getProductPendency(
      {List<String>? columns});
  Future<CustomerState> getCustomer({List<String>? columns});
  Future<BrandState> getBrands({List<String>? columns});
  Future<ProductState> addProduct(ProductRelationalModel model);
}
