import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:postgres/postgres.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/stock_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_pendency/product_pendency_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_model.dart';
import 'package:shopping_brecho/app/core/models/register_sale/register_sale_model.dart';
import 'package:shopping_brecho/app/core/models/register_sale/sale_payment_type/sale_payment_type_model.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';
import 'package:shopping_brecho/app/helpers/extension/extension_string.dart';

class StockRepository implements IStockRepository {
  final RemoteDatabase _database;
  StockRepository(this._database);

  @override
  Future<FreezedStatus> saveSaleProduct(
      {required RegisterSaleModel model,
      required List<SalePaymentTypeModel> paymentTypeList}) async {
    try {
      final query = '''
          INSERT INTO product_seller(product_stock_id, customer_id, created_at, seller_price, observation, seller_at) VALUES 
          ('${model.productStockId}', '${model.customerId}', '${model.createdAt}', '${model.sellerPrice}', 
          '${model.observation}', '${model.sellerAt}') 
          returning product_seller_id;''';

      final result = await _database.mappedresults(query);

      final productSellerResult =
          result.first['product_seller'] as Map<String, dynamic>?;

      addPaymentSale(
          productSeller: productSellerResult,
          saleAt: model.sellerAt,
          paymentTypeList: paymentTypeList);

      updateStock(productStockId: model.productStockId);

      return const FreezedStatus.success();
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  Future<void> updateStock({required int productStockId}) async {
    try {
      _database.mappedresults(
          '''UPDATE product_stock SET is_sold = true WHERE product_stock_id = $productStockId;''');
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
    }
  }

  Future<void> addPaymentSale({
    required Map<String, dynamic>? productSeller,
    required dynamic saleAt,
    required List<SalePaymentTypeModel> paymentTypeList,
  }) async {
    try {
      if (productSeller.isNotNullAndNotEmpty) {
        final sellerId = productSeller?['product_seller_id'] as int;
        String valuesInsert = '';

        for (final salePayment in paymentTypeList) {
          if (salePayment.isCreditCard) {
            final sellerAt = DateTime.tryParse(saleAt.toString());
            for (int i = 1; i <= salePayment.installment; i++) {
              valuesInsert =
                  "('$sellerId', '${salePayment.paymentType}', '${DateTime.now().toUtc()}', '${sellerAt?.add(Duration(days: i * 30))}', '${salePayment.value / i}', '$i')${valuesInsert.isNotEmpty ? ' , $valuesInsert' : ''}";
            }
          } else {
            valuesInsert =
                "('$sellerId','${salePayment.paymentType}', '${DateTime.now().toUtc()}', '$saleAt', '${salePayment.value}', '1')${valuesInsert.isNotEmpty ? ' , $valuesInsert' : ''}";
          }
        }

        final query =
            'INSERT INTO sale_payment_table (product_seller_id, payment_type, created_at, provisioned_at, provisioned_value, installment_order) VALUES $valuesInsert;';

        await _database.query(query);
      }
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
    }
  }

  @override
  Future<FreezedStatus> saveProductStock(
      ProductStockModel stock, List<int> pendencies) async {
    try {
      final query =
          "INSERT INTO product_stock(product_id, customer_id, payment_type_id, created_at, price, is_sold, purchased_at, has_pendency, color) VALUES " +
              "('${stock.productId}', '${stock.customerId}', '${stock.paymentTypeId}', '${stock.createdAt}', '${stock.price}', '${stock.isSold}', '${stock.purchasedAt}', '${pendencies.isNotEmpty}', '${stock.color}') returning product_stock_id";

      final result = await _database.mappedresults(query);

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

      await _database.mappedresults(query);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
    }
  }

  @override
  Future<FreezedStatus<List<ProductStockListModel>>> getAllProductsStock(
      {required Map<String, dynamic> filters}) async {
    try {
      final isSold = filters['is_sold'] as bool;

      final filter = '''
            where lower(ct.name) LIKE lower('${filters['keyword'] ?? ''}%')
            AND is_sold = $isSold
            ${filters['start_date'] != null ? " AND purchased_at >= '${filters['start_date']}'" : ''}
            ${filters['finished_date'] != null ? " AND purchased_at <= '${filters['finished_date']}'" : ''}
          ''';

      final String order =
          (filters['order_by'] as String?) ?? 'ps.purchased_at';

      final String orderBy = ' ORDER BY $order DESC';

      final query = '''
          SELECT
          ps.product_stock_id, product_id, customer_id, has_pendency, ps.purchased_at, price as buy_price, is_sold, p.product_category_id, p.model, b.brand_name ,c.category_name, c.category_value, c.color, ct.name as buy_name, ct.phone, ct.address as buy_address, ct.number
           FROM product_stock as ps
          JOIN product as p ON p.id = product_id 
          JOIN category as c ON c.id = p.product_category_id
          JOIN customer_table as ct ON ct.id = customer_id
          JOIN brand_table as b ON b.id = p.brand_id
          $filter $orderBy;
           ''';

      final result = await _database.query(query);

      final List<Map<String, dynamic>> jsonList = [];

      for (final e in result) {
        final Map<String, dynamic> json = {};
        final descriptions = e.columnDescriptions;
        for (int i = 0; i < descriptions.length; i++) {
          json[descriptions[i].columnName] = e[i];
        }
        jsonList.add(json);
      }

      if (result.isEmpty) {
        return const FreezedStatus.empty();
      }

      return FreezedStatus.data(
          jsonList.map((e) => ProductStockListModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<ProductStockListModel>>> getAllProductsSale(
      {required Map<String, dynamic> filters}) async {
    try {
      final isSold = filters['is_sold'] as bool;

      final filter = '''
            where lower(cseller.name) LIKE lower('${filters['keyword'] ?? ''}%')
            AND is_sold = $isSold
            ${filters['start_date'] != null ? " AND pseller.seller_at >= '${filters['start_date']}'" : ''}
            ${filters['finished_date'] != null ? " AND pseller.seller_at <= '${filters['finished_date']}'" : ''}
          ''';

      final String order =
          (filters['order_by'] as String?) ?? 'pseller.seller_at';

      final String orderBy = ' ORDER BY $order DESC';

      final String query = '''
SELECT ps.product_id, ps.price as buy_price, ps.purchased_at, ps.is_sold, p.model, ct.name as buy_name, ct.address as buy_address, cseller.address as seller_address, cseller.name as seller_name, pseller.seller_price as sale_price, pseller.seller_at, c.color, c.category_name, c.category_value FROM product_stock as ps
INNER JOIN customer_table as ct ON (ps.customer_id = ct.id) 
JOIN product as p ON (p.id = ps.product_id)
JOIN category as c ON (c.id = p.product_category_id)
JOIN product_seller as pseller ON (
pseller.product_stock_id = ps.product_stock_id) 
INNER JOIN customer_table as cseller ON (
cseller.id = pseller.customer_id)
$filter $orderBy
''';

      final PostgreSQLResult result = await _database.query(query);

      final List<Map<String, dynamic>> jsonList = [];

      for (final e in result) {
        final Map<String, dynamic> json = {};
        final descriptions = e.columnDescriptions;
        for (int i = 0; i < descriptions.length; i++) {
          json[descriptions[i].columnName] = e[i];
        }
        jsonList.add(json);
      }

      if (result.isEmpty) {
        return const FreezedStatus.empty();
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

      final result = await _database.mappedresults(query);

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
