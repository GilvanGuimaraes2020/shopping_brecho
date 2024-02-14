import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/brand/brand_model.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/old_category/old_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_category/product_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_relational_model/product_relational_model.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';

class ProductRepository implements IProductRepository {
  final RemoteDatabase _remoteDatabase;

  ProductRepository(this._remoteDatabase);

  @override
  Future<List<Map<String, dynamic>>> select(
      {List<String>? columns, required String tableName}) async {
    final tableColumns = columns == null ? '*' : columns.join(',');
    return _remoteDatabase.query('SELECT $tableColumns FROM $tableName;');
  }

  @override
  Future<ProductState> addProduct(ProductRelationalModel model) async {
    try {
      final valuesInsert =
          '${model.productCategoryId}, ${model.oldCategoryId}, ${model.brandId}, ${model.model}, ${model.createdAt}';

      final query =
          'INSERT INTO product(product_category_id, old_category_id, brand_id, model, created_at) VALUES ($valuesInsert) RETURNING id';

      final result = await _remoteDatabase.query(query);

      return ProductState.success(result);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return ProductState.error(e);
    }
  }

  @override
  Future<OldCategoryState> getOldCategory({List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '*' : columns.join(',');
      final result = await _remoteDatabase
          .query('SELECT $tableColumns FROM old_category;');
      return OldCategoryState.data(
          result.map((e) => OldCategoryModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return OldCategoryState.error(e);
    }
  }

  @override
  Future<ProductCategoryState> getProductCategory(
      {List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '*' : columns.join(',');
      final result =
          await _remoteDatabase.query('SELECT $tableColumns FROM category;');
      return ProductCategoryState.data(
          result.map((e) => ProductCategoryModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return ProductCategoryState.error(e);
    }
  }

  @override
  Future<BrandState> getBrands({List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '*' : columns.join(',');
      final result =
          await _remoteDatabase.query('SELECT $tableColumns FROM brand_table;');
      return BrandState.data(
          result.map((e) => BrandModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return BrandState.error(e);
    }
  }

  @override
  Future<CustomerState> getCustomer({List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '*' : columns.join(',');
      final result = await _remoteDatabase
          .query('SELECT $tableColumns FROM customer_table;');
      return CustomerState.data(
          result.map((e) => CustomerModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return CustomerState.error(e);
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getProductPendency(
      {List<String>? columns}) async {
    final tableColumns = columns == null ? '*' : columns.join(',');
    return _remoteDatabase.query('SELECT $tableColumns FROM product_pendency;');
  }
}
