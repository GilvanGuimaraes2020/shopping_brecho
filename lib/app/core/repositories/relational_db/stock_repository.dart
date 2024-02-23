import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/stock_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_model.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';

class StockRepository implements IStockRepository {
  final RemoteDatabase _database;
  StockRepository(this._database);

  @override
  Future<FreezedStatus> saveProductStock(ProductStockModel stock) async {
    try {
      final query =
          "INSERT INTO product_stock(product_id, customer_id, payment_type_id, created_at, price, is_sold) VALUES " +
              "('${stock.productId}', '${stock.customerId}', '${stock.paymentTypeId}', '${stock.createdAt}', '${stock.price}', '${stock.isSold}')";

      _database.query(query);

      return const FreezedStatus.success();
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }
}
