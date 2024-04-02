import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_empty_state.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/progress_hud.dart';
import 'package:shopping_brecho/app/core/models/results/results_by_category_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/module/results/results_controller.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final controller = Modular.get<ResultsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados').labelSmallRegular(),
        centerTitle: true,
      ),
      body: Observer(builder: (context) {
        return ProgressHud(
          isLoading: controller.isLoading,
          child: RefreshIndicator(
            onRefresh: controller.fullReload,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: BrechoSpacing.xxiv),
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: BrechoSpacing.xxiv,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              BrechoSelectModalField(
                                  label: 'Data inicial',
                                  selectTitle: 'Data inicial',
                                  selectItems: controller.months,
                                  controller: controller.startDateCtl,
                                  notAllowSelection: (p0) =>
                                      p0 as int > controller.finishDateIndex,
                                  onSelectItem: (p0) {
                                    controller.onSelectStartDate(p0);
                                  })
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: BrechoSpacing.xvi,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              BrechoSelectModalField(
                                  label: 'Data final',
                                  selectTitle: 'Data final',
                                  selectItems: controller.months,
                                  controller: controller.finishDateCtl,
                                  notAllowSelection: (p0) =>
                                      p0 as int < controller.startDateIndex,
                                  onSelectItem: (p0) {
                                    controller.onSelectFinishDate(p0);
                                  })
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.only(top: BrechoSpacing.xvi),
                    sliver: SliverToBoxAdapter(
                      child: _Header(title: 'Relação de vendas'),
                    ),
                  ),
                  controller.results.maybeWhen(
                      data: (data) {
                        final totalSale = data
                            .map(
                              (e) =>
                                  double.tryParse(e.categoryTotal.toString()) ??
                                  0,
                            )
                            .reduce(
                              (value, element) => value + element,
                            );

                        final totalItems = data
                            .map(
                              (e) => e.qtyItems,
                            )
                            .reduce(
                              (value, element) => value + element,
                            );
                        return SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              vertical: BrechoSpacing.xvi),
                          sliver: SliverToBoxAdapter(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: BrechoSpacing.viii,
                                ),
                                ...List.generate(
                                    data.length,
                                    (index) =>
                                        _TableRows(categoryModel: data[index])),
                                const Divider(),
                                _TotalWidget(
                                    totalItems: totalItems,
                                    sumTotal: totalSale),
                              ],
                            ),
                          ),
                        );
                      },
                      empty: () => const _EmptyState(),
                      error: (error) => SliverToBoxAdapter(
                            child: BrechoEmptyState.genericInfoAndTryAgain(
                              onPressed: controller.resultsBycategory,
                            ),
                          ),
                      orElse: () => const SliverToBoxAdapter()),
                  const SliverPadding(
                    padding: EdgeInsets.only(top: BrechoSpacing.viii),
                    sliver: SliverToBoxAdapter(
                      child: _Header(title: 'Relação de compras'),
                    ),
                  ),
                  controller.buyResults.maybeWhen(
                      data: (data) {
                        final sumTotal = data
                            .map(
                              (e) =>
                                  double.tryParse(e.categoryTotal.toString()) ??
                                  0,
                            )
                            .reduce(
                              (value, element) => value + element,
                            );

                        final totalItems = data
                            .map(
                              (e) => e.qtyItems,
                            )
                            .reduce(
                              (value, element) => value + element,
                            );
                        return SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              vertical: BrechoSpacing.xvi),
                          sliver: SliverToBoxAdapter(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: BrechoSpacing.viii,
                                ),
                                ...List.generate(
                                    data.length,
                                    (index) =>
                                        _TableRows(categoryModel: data[index])),
                                const Divider(),
                                _TotalWidget(
                                    totalItems: totalItems, sumTotal: sumTotal),
                              ],
                            ),
                          ),
                        );
                      },
                      empty: () => const _EmptyState(),
                      error: (error) => SliverToBoxAdapter(
                            child: BrechoEmptyState.genericInfoAndTryAgain(
                              onPressed: controller.buyResultsBycategory,
                            ),
                          ),
                      orElse: () => const SliverToBoxAdapter()),
                  SliverPadding(
                    padding: const EdgeInsets.only(top: BrechoSpacing.xvi),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        children: [
                          const Text(
                            'Resultado bruto',
                            textAlign: TextAlign.center,
                          ).labelLargeRegular(),
                          const SizedBox(
                            height: BrechoSpacing.xii,
                          ),
                          _RawScore(rawScore: controller.rawScore)
                        ],
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: BrechoSpacing.lvi,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _RawScore extends StatelessWidget {
  final double rawScore;
  const _RawScore({required this.rawScore});

  @override
  Widget build(BuildContext context) {
    final Color backGroundColor = rawScore <= 0
        ? BrechoColors.responseDanger
        : BrechoColors.responseSuccess;
    final Color textColor =
        rawScore <= 0 ? BrechoColors.monoWhite : BrechoColors.primaryBlue10;
    final IconData icon = rawScore <= 0
        ? BrechoIcons.arrow_circle_down
        : BrechoIcons.arrow_circle_up;
    return DecoratedBox(
      decoration: BoxDecoration(
          color: backGroundColor, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(BrechoSpacing.xii),
        child: Row(
          children: [
            Icon(
              icon,
              color: textColor,
            ),
            const SizedBox(
              width: BrechoSpacing.xvi,
            ),
            RichText(
                text: TextSpan(children: [
              const Text('Total: ')
                  .labelMediumMedium()
                  .color(textColor)
                  .toTextSpan(),
              Text(FormatHelper.currency(rawScore))
                  .labelMediumBold()
                  .color(textColor)
                  .toTextSpan(),
            ]))
          ],
        ),
      ),
    );
  }
}

class _TotalWidget extends StatelessWidget {
  final int totalItems;
  final double sumTotal;
  const _TotalWidget({required this.totalItems, required this.sumTotal});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 100,
            child: const Text(
              'Total:',
            ).labelMediumMedium()),
        Padding(
          padding: const EdgeInsets.only(
              left: BrechoSpacing.viii, right: BrechoSpacing.xvi),
          child: SizedBox(
            width: 100,
            child: Text(
              totalItems.toString(),
              textAlign: TextAlign.center,
            ).labelMediumMedium(),
          ),
        ),
        SizedBox(
          width: 100,
          child: Text(
            FormatHelper.currency(sumTotal),
            textAlign: TextAlign.center,
          ).labelMediumMedium(),
        ),
      ],
    );
  }
}

class _TableRows extends StatelessWidget {
  final ResultsByCategoryModel categoryModel;
  const _TableRows({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.iv),
      child: Row(
        children: [
          SizedBox(width: 100, child: Text(categoryModel.categoryName ?? '')),
          Padding(
            padding: const EdgeInsets.only(
                left: BrechoSpacing.viii, right: BrechoSpacing.xvi),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: BrechoColors.primaryBlue5,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox(
                height: 30,
                width: 100,
                child: Center(
                  child: Text(categoryModel.qtyItems.toString())
                      .labelSmallBold()
                      .color(BrechoColors.monoWhite),
                ),
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: BrechoColors.primaryBlue5,
              borderRadius: BorderRadius.circular(16),
            ),
            child: SizedBox(
              height: 30,
              width: 100,
              child: Center(
                child: Text(FormatHelper.currency(categoryModel.categoryTotal))
                    .labelSmallBold()
                    .color(BrechoColors.monoWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  const _Header({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: BrechoSpacing.xvi),
          child: Text(
            title,
            textAlign: TextAlign.center,
          ).labelLargeRegular(),
        ),
        Row(
          children: [
            SizedBox(
                width: 100, child: const Text('Items').labelMediumMedium()),
            Padding(
              padding: const EdgeInsets.only(
                  left: BrechoSpacing.viii, right: BrechoSpacing.xvi),
              child: SizedBox(
                width: 100,
                child: const Text('Quantidade').labelMediumMedium(),
              ),
            ),
            SizedBox(
              width: 100,
              child: const Text('Total').labelMediumMedium(),
            ),
          ],
        ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: BrechoSpacing.lvi,
        ),
        const Icon(
          BrechoIcons.warning,
          size: 70,
          color: BrechoColors.responseWarning,
        ),
        const SizedBox(
          height: BrechoSpacing.xxxii,
        ),
        const Text('Sem dados!').labelLargeBold(),
      ],
    ));
  }
}
