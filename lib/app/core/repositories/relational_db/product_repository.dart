import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/brand/brand_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/old_category/old_category_model.dart';
import 'package:shopping_brecho/app/core/models/payment_type/payment_type_model.dart';
import 'package:shopping_brecho/app/core/models/product_category/product_category_model.dart';
import 'package:shopping_brecho/app/core/models/product_pendency_table/product_pendency_table_model.dart';
import 'package:shopping_brecho/app/core/models/product_relational_model/product_relational_model.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';

class ProductRepository implements IProductRepository {
  final RemoteDatabase _remoteDatabase;

  ProductRepository(this._remoteDatabase);

  @override
  Future<List<Map<String, dynamic>>> select(
      {List<String>? columns, required String tableName}) async {
    final tableColumns = columns == null ? '*' : columns.join(',');
    return _remoteDatabase
        .mappedresults('SELECT $tableColumns FROM $tableName;');
  }

//Implementar na sequencia para diminuir custo do banco
  @override
  Future<FreezedStatus> addProductList(
      List<ProductRelationalModel> models) async {
    try {
      String valuesInsert = '';
      for (final model in models) {
        valuesInsert =
            '(${model.productCategoryId}, ${model.oldCategoryId}, ${model.brandId}, ${model.model}, ${model.createdAt}), $valuesInsert';
      }

      final query =
          'INSERT INTO product(product_category_id, old_category_id, brand_id, model, created_at) VALUES $valuesInsert;';

      final result = await _remoteDatabase.mappedresults(query);

      return FreezedStatus.success(result);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus> addPendencyList(
      List<ProductPendencyTableModel> models) async {
    try {
      String valuesInsert = '';
      for (final model in models) {
        valuesInsert =
            "('${model.productStockId}', '${model.productPendencyId}', 'false', '${DateTime.now().toUtc()}')${valuesInsert.isNotEmpty ? ' , $valuesInsert' : ''}";
      }

      final query =
          'INSERT INTO product_pendency_table (product_stock_id, product_pendency_id, completed, created_at) VALUES $valuesInsert;';

      final result = await _remoteDatabase.mappedresults(query);

      return FreezedStatus.success(result);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus> addProduct(ProductRelationalModel model) async {
    try {
      final valuesInsert =
          "('${model.productCategoryId}', '${model.oldCategoryId}', '{${model.oldCategoryIdList.join(',')}}', '${model.brandId}', '${model.model}', '${model.createdAt}')";

      final query =
          'INSERT INTO product(product_category_id, old_category_id, old_category_id_list, brand_id, model, created_at) VALUES $valuesInsert;';

      final result = await _remoteDatabase.mappedresults(query);

      return FreezedStatus.success(result);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<ProductRelationalModel>>> getAllProducts(
      {List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '' : columns.join(',');
      final query =
          'SELECT product.id, product_category_id, old_category_id, model, brand_id, created_at, brand_table.brand_name, category.category_name  $tableColumns FROM product JOIN brand_table ON product.brand_id = brand_table.id JOIN category ON category.id = product_category_id ORDER BY category_name ASC;';

      final result = await _remoteDatabase.mappedresults(query);

      final List<Map<String, dynamic>> jsonList = [];

      for (final e in result) {
        Map<String, dynamic> json = {};
        json = Map<String, dynamic>.of(e['product'] as Map<String, dynamic>);
        json.addAll(e['brand_table'] as Map<String, dynamic>);
        json.addAll(e['category'] as Map<String, dynamic>);
        jsonList.add(json);
      }

      return FreezedStatus.data(
          jsonList.map((e) => ProductRelationalModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<OldCategoryModel>>> getOldCategory(
      {List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '*' : columns.join(',');
      final result = await _remoteDatabase
          .mappedresults('SELECT $tableColumns FROM old_category;');
      return FreezedStatus.data(result
          .map((e) => OldCategoryModel.fromJson(
              e['old_category'] as Map<String, dynamic>))
          .toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<ProductCategoryModel>>> getProductCategory(
      {List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '*' : columns.join(',');
      final result =
          await _remoteDatabase.mappedresults(
          'SELECT $tableColumns FROM category ORDER BY category_name ASC;');
      return FreezedStatus.data(result
          .map((e) => ProductCategoryModel.fromJson(
              e['category'] as Map<String, dynamic>))
          .toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<BrandModel>>> getBrands(
      {List<String>? columns}) async {
    try {
      final tableColumns = columns == null ? '*' : columns.join(',');
      final List<BrandModel> values = [];
      final result =
          await _remoteDatabase
          .mappedresults('SELECT $tableColumns FROM brand_table;');

      for (final e in result) {
        values
            .add(BrandModel.fromJson(e['brand_table'] as Map<String, dynamic>));
      }
      return FreezedStatus.data(values);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<ProductPendencyTableModel>>> getPendencyByProductId(
      String productId) async {
    try {
      final result = await _remoteDatabase.mappedresults('''
          SELECT p.id, p.product_pendency_id, t.pendency_name
          FROM product_pendency_table as p
          JOIN product_pendency as t ON t.id = p.product_pendency_id 
          WHERE completed = false 
          AND p.product_stock_id = $productId;
          ''');

      final List<Map<String, dynamic>> jsonList = [];

      for (final e in result) {
        Map<String, dynamic> json = {};
        json = Map<String, dynamic>.of(
            e['product_pendency_table'] as Map<String, dynamic>);
        json.addAll(e['product_pendency'] as Map<String, dynamic>);
        jsonList.add(json);
      }

      return FreezedStatus.data(
          jsonList.map((e) => ProductPendencyTableModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<PaymentTypeModel>>> getPaymentType() async {
    try {
      final result =
          await _remoteDatabase.mappedresults('SELECT * FROM payment_type;');
      return FreezedStatus.data(result
          .map((e) => PaymentTypeModel.fromJson(
              e['payment_type'] as Map<String, dynamic>))
          .toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }
}
