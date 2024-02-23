import 'package:shopping_brecho/app/core/models/brand/brand_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/old_category/old_category_model.dart';
import 'package:shopping_brecho/app/core/models/payment_type/payment_type_model.dart';
import 'package:shopping_brecho/app/core/models/product_category/product_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_relational_model/product_relational_model.dart';

abstract class IProductRepository {
  Future<List<Map<String, dynamic>>> select(
      {List<String>? columns, required String tableName});
  Future<FreezedStatus<List<OldCategoryModel>>> getOldCategory(
      {List<String>? columns});
  Future<FreezedStatus<List<ProductCategoryModel>>> getProductCategory({List<String>? columns});
  Future<List<Map<String, dynamic>>> getProductPendency(
      {List<String>? columns});
  Future<FreezedStatus<List<BrandModel>>> getBrands({List<String>? columns});
  Future<FreezedStatus> addProduct(ProductRelationalModel model);
  Future<FreezedStatus> addProductList(List<ProductRelationalModel> model);
  Future<FreezedStatus<List<ProductRelationalModel>>> getAllProducts({List<String>? columns});
  Future<FreezedStatus<List<PaymentTypeModel>>> getPaymentType();
}
