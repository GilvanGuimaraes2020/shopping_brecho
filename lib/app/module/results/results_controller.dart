import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/results_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/results/results_by_category_model.dart';

part 'results_controller.g.dart';

class ResultsController = _ResultsController with _$ResultsController;

abstract class _ResultsController with Store {
  final IResultsRepository resultsRepository;

  _ResultsController(this.resultsRepository) {
    final currentMonth = DateTime.now().month;
    finishDateIndex = startDateIndex = currentMonth - 1;
    startDateCtl.text = finishDateCtl.text = months[startDateIndex];
    onSelectStartDate(currentMonth - 1, reloadCategory: false);
    onSelectFinishDate(currentMonth, reloadCategory: false);
    fullReload();
  }

  final startDateCtl = TextEditingController();

  final finishDateCtl = TextEditingController();

  String startDate = '';

  String finishedDate = '';

  @observable
  int startDateIndex = -1;

  @observable
  int finishDateIndex = -1;

  int get currentYear => DateTime.now().year;

  @observable
  FreezedStatus<List<ResultsByCategoryModel>> results =
      const FreezedStatus.loading();

  @observable
  FreezedStatus<List<ResultsByCategoryModel>> buyResults =
      const FreezedStatus.loading();

  List<String> get months => [
        'Janeiro',
        'Fevereiro',
        'Março',
        'Abril',
        'Maio',
        'Junho',
        'Julho',
        'Agosto',
        'Setembro',
        'Outubro',
        'Novembro',
        'Dezembro'
      ];

  @action
  void onSelectStartDate(dynamic value, {bool reloadCategory = true}) {
    startDateIndex = value as int;
    startDate = DateFormat('yyyy/MM/dd')
        .format(DateTime(currentYear, startDateIndex + 1));
    if (reloadCategory) {
      fullReload();
    }
  }

  @action
  void onSelectFinishDate(dynamic value, {bool reloadCategory = true}) {
    finishDateIndex = value as int;
    finishedDate = DateFormat('yyyy/MM/dd')
        .format(DateTime(currentYear, finishDateIndex + 2, 0));
    if (reloadCategory) {
      fullReload();
    }
  }

  @action
  Future<void> fullReload() async {
    resultsBycategory();
    buyResultsBycategory();
  }

  @action
  Future<void> resultsBycategory() async {
    results = const FreezedStatus.loading();
    results = await resultsRepository.resultsByCategory(
        startDate: startDate, finishDate: finishedDate);
  }

  @action
  Future<void> buyResultsBycategory() async {
    buyResults = const FreezedStatus.loading();
    buyResults = await resultsRepository.buyResultsByCategory(
        startDate: startDate, finishDate: finishedDate);
  }

  @computed
  double get rawScore {
    final double saleResult = results.maybeWhen(
        data: (data) => data
            .map((e) => double.tryParse(e.categoryTotal.toString()) ?? 0)
            .reduce((value, element) => value + element),
        orElse: () => 0);
    final double buyResult = buyResults.maybeWhen(
        data: (data) => data
            .map((e) => double.tryParse(e.categoryTotal.toString()) ?? 0)
            .reduce((value, element) => value + element),
        orElse: () => 0);

    return saleResult - buyResult;
  }

  @computed
  bool get isLoading =>
      results is FreezedStatusLoading || buyResults is FreezedStatusLoading;
}
