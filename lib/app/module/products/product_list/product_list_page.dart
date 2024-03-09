import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/badge.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_shimmer.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/module/products/product_detail/product_detail_page.dart';
import 'package:shopping_brecho/app/module/products/product_list/product_list_controller.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_page.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final controller = Modular.get<ProductListController>();

  @override
  void initState() {
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listagem de produtos').labelMediumRegular(),
        centerTitle: true,
      ),
      body: Observer(builder: (context) {
        return RefreshIndicator(
          onRefresh: controller.getStockProductAll,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: BrechoSpacing.xxiv,
            ),
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
                        child: BrechoTextField(
                          label: 'Pesquisar nome',
                          controller: controller.nameCtl,
                          onChanged: controller.setName,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: BrechoSpacing.viii),
                        child: BrechoIconButton(
                            icon: BrechoIcons.tune, onPressed: () {}),
                      ),
                      BrechoIconButton(
                          icon: BrechoIcons.add,
                          onPressed: () async {
                            final result =
                                await Modular.to.push(MaterialPageRoute(
                              builder: (context) => const RegisterBuyPage(),
                            ));

                            if (result is FreezedStatusData) {
                              controller.getStockProductAll();
                            }
                          })
                    ],
                  ),
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(vertical: BrechoSpacing.xxiv),
                  sliver: SliverList(
                      delegate: SliverChildListDelegate([
                    ...controller.stockList.maybeWhen(
                        data: (data) => data.map((e) => Padding(
                              padding: const EdgeInsets.only(
                                  bottom: BrechoSpacing.xxii),
                              child: _StockCard(
                                stockListModel: e,
                              ),
                            )),
                        loading: () => const [_StockCardLoading()],
                        orElse: () => const [SizedBox.shrink()]),
                  ])),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: BrechoSpacing.xxiv,
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _StockCard extends StatelessWidget {
  final ProductStockListModel stockListModel;

  const _StockCard({
    required this.stockListModel,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSold = stockListModel.isSold;
    final Color backgroundColor =
        isSold ? BrechoColors.primaryBlue10 : BrechoColors.neutral7;
    final String categoryName = stockListModel.categoryName ?? '';
    final String name = stockListModel.name ?? '';
    final String address = stockListModel.address ?? '';
    final String price = stockListModel.price ?? '';
    final String phone = stockListModel.phone ?? '';
    final String color = stockListModel.color ?? '';
    final dynamic purchasedAt = stockListModel.purchasedAt ?? '';

    return InkWell(
      onTap: () => Modular.to.push(MaterialPageRoute(
          builder: (context) => ProductDetailPage(
                stockListModel: stockListModel,
              ))),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: BrechoSpacing.xii, vertical: BrechoSpacing.xvi),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Badge(
                    child: categoryName,
                    color: color,
                  ),
                  Text(FormatHelper.formatDDMMYYYY(purchasedAt))
                      .labelSmallBold(),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: BrechoSpacing.xii),
                child: Row(
                  children: [
                    const Icon(BrechoIcons.person),
                    const SizedBox(
                      width: BrechoSpacing.x,
                    ),
                    Text(name).labelLargeRegular(),
                    Expanded(
                        child: Text(
                      FormatHelper.currency(price),
                      textAlign: TextAlign.end,
                    ).labelLargeRegular())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: BrechoSpacing.xii),
                child: Row(
                  children: [
                    const Icon(BrechoIcons.house),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: BrechoSpacing.xii),
                      child: Text(address).labelLargeRegular(),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(BrechoIcons.local_phone),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: BrechoSpacing.xii),
                    child: Text(FormatHelper.formatPhone(phone))
                        .labelLargeRegular(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _StockCardLoading extends StatelessWidget {
  const _StockCardLoading();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size;
    return Column(
      children: List.generate(
          5,
          (index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrechoShimmerContainer(
                      width: sizeWidth.width * 0.2, height: 40, radius: 20),
                  BrechoShimmerContainer(
                    width: sizeWidth.width * 0.5,
                    height: 20,
                    radius: 20,
                  ),
                ],
              )),
    );
  }
}
