import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/results_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/results/results_by_category_model.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';

class ResultsRepository implements IResultsRepository {
  final RemoteDatabase _database;
  ResultsRepository(this._database);

  @override
  Future<FreezedStatus<List<ResultsByCategoryModel>>> resultsByCategory(
      {required String startDate, required String finishDate}) async {
    try {
      final query = '''
SELECT sale.product_category_id, category_name, COUNT(product_category_id) as qty_items,  SUM(seller_price) as category_total
FROM (
        SELECT
            c.id as product_category_id, c.category_name, pseller.seller_price as seller_price
        FROM
            product_seller as pseller
            JOIN product_stock as pstock ON pstock.product_stock_id = pseller.product_stock_id
            JOIN product as p ON p.id = pstock.product_id
            JOIN category as c ON c.id = p.product_category_id
        WHERE
            pseller.seller_at BETWEEN '$startDate' AND '$finishDate'
    ) as sale
GROUP BY
   sale.product_category_id, category_name;
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
          jsonList.map((e) => ResultsByCategoryModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus<List<ResultsByCategoryModel>>> buyResultsByCategory(
      {required String startDate, required String finishDate}) async {
    try {
      final query = '''
SELECT
    sale.product_category_id,
    category_name,
    COUNT(product_category_id) as qty_items,
    SUM(buy_price) as category_total
FROM (
        SELECT
            c.id as product_category_id, c.category_name, pstock.price as buy_price
        FROM
            product_stock as pstock
            JOIN product as p ON p.id = pstock.product_id
            JOIN category as c ON c.id = p.product_category_id
        WHERE
            pstock.purchased_at BETWEEN '$startDate' AND '$finishDate'
        AND is_sold = FALSE
    ) as sale
GROUP BY
    sale.product_category_id,
    category_name;
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
          jsonList.map((e) => ResultsByCategoryModel.fromJson(e)).toList());
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }
}
