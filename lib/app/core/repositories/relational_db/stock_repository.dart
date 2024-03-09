import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/stock_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_pendency/product_pendency_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_model.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

class StockRepository implements IStockRepository {
  final RemoteDatabase _database;
  StockRepository(this._database);

  @override
  Future<FreezedStatus> saveProductStock(
      ProductStockModel stock, List<int> pendencies) async {
    try {
      final query =
          "INSERT INTO product_stock(product_id, customer_id, payment_type_id, created_at, price, is_sold, purchased_at) VALUES " +
              "('${stock.productId}', '${stock.customerId}', '${stock.paymentTypeId}', '${stock.createdAt}', '${stock.price}', '${stock.isSold}', '${stock.purchasedAt}') returning product_stock_id";

      final result = await _database.query(query);

      final productStockResult =
          result.first['product_stock'] as Map<String, dynamic>?;

      if (pendencies.isNotEmpty && productStockResult.isNotNullAndNotEmpty) {
        final stockId = productStockResult?['product_stock_id'] as int;
        await addPendency(pendencies, stockId);
      }

      return const FreezedStatus.success();
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  Future<void> addPendency(List<int> pendencies, int stockId) async {
    try {
      String valuesInsert = '';
      for (final p in pendencies) {
        valuesInsert =
            "('$stockId', '$p', 'false', '${DateTime.now().toUtc()}')${valuesInsert.isNotEmpty ? ' , $valuesInsert' : ''}";
      }

      final query =
          'INSERT INTO product_pendency_table (product_stock_id, product_pendency_id, completed, created_at) VALUES $valuesInsert;';

      await _database.query(query);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
    }
  }

  @override
  Future<FreezedStatus<List<ProductStockListModel>>> getAllProductsStock(
      {required Map<String, dynamic> filters}) async {
    try {
      final filter = '''
            where lower(name) LIKE lower('${filters['keyword'] ?? ''}%')
            ${filters.containsKey('is_sold') ? ' AND is_sold = ${filters['is_sold']}' : ''}
          ''';
      final query = '''
          SELECT
          product_stock_id, product_id, customer_id, ps.purchased_at, price, is_sold, p.product_category_id, p.model, b.brand_name ,c.category_name, c.category_value, c.color, ct.name, ct.phone, ct.address, ct.number
           FROM product_stock as ps
          JOIN product as p ON p.id = product_id 
          JOIN category as c ON c.id = p.product_category_id
          JOIN customer_table as ct ON ct.id = customer_id
          JOIN brand_table as b ON b.id = p.brand_id
          $filter;
           ''';

      final result = await _database.query(query);

      final List<Map<String, dynamic>> jsonList = [];

      for (final e in result) {
        Map<String, dynamic> json = {};
        json =
            Map<String, dynamic>.of(e['product_stock'] as Map<String, dynamic>);
        json.addAll(e['product'] as Map<String, dynamic>);
        json.addAll(e['category'] as Map<String, dynamic>);
        json.addAll(e['customer_table'] as Map<String, dynamic>);
        json.addAll(e['brand_table'] as Map<String, dynamic>);
        jsonList.add(json);
      }

      return FreezedStatus.data(
          jsonList.map((e) => ProductStockListModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<ProductPendencyModel>>> getAllPendency() async {
    try {
      const query = 'SELECT * FROM product_pendency;';

      final result = await _database.query(query);

      return FreezedStatus.data(result
          .map((e) => ProductPendencyModel.fromJson(
              e['product_pendency'] as Map<String, dynamic>))
          .toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }
}
