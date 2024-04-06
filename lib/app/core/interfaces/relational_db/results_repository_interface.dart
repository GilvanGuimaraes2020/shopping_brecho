import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/results/results_by_category_model.dart';

abstract class IResultsRepository {
  Future<FreezedStatus<List<ResultsByCategoryModel>>> resultsByCategory(
      {required String startDate, required String finishDate});
  Future<FreezedStatus<List<ResultsByCategoryModel>>> buyResultsByCategory(
      {required String startDate, required String finishDate});
}
