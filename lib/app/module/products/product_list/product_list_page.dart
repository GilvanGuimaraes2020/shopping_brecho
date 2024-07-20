import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/badge.dart' as bd;
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_shimmer.dart';
import 'package:shopping_brecho/app/component/brecho_snackbar.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/component/chips_filter.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_list_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/module/products/product_detail/product_detail_page.dart';
import 'package:shopping_brecho/app/module/products/product_filter_page/product_filter_page.dart';
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
                          suffixIcon: BrechoIcons.search,
                          onTapIcon: () {
                            controller.applyFilters();
                            // controller.getStockProductAll();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: BrechoSpacing.viii),
                        child: BrechoIconButton(
                            icon: BrechoIcons.tune,
                            onPressed: () async {
                              final result =
                                  await Modular.to.push(MaterialPageRoute(
                                      builder: (context) => ProductFilterPage(
                                            controller: controller,
                                          )));
                              if (result != null) {
                                controller.assignFilter(result);
                              }
                            }),
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
                if (controller.filterChipsItem.isNotEmpty)
                  SliverToBoxAdapter(
                      child: ChipsFilter(
                          items: controller.filterChipsItem,
                          clearAll: controller.resetAndGetAllStock)),
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
                                resetAll: controller.resetAndGetAllStock,
                              ),
                            )),
                        empty: () => [
                              const Center(
                                child: Text('Sem dados!'),
                              )
                            ],
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
  final Function()? resetAll;

  const _StockCard({
    required this.stockListModel,
    this.resetAll,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSold = stockListModel.isSold;
    final Color backgroundColor =
        isSold ? BrechoColors.primaryBlue8 : BrechoColors.neutral7;
    final String categoryName = stockListModel.categoryName ?? '';
    final String buyName = stockListModel.buyName ?? '';
    final String sellerName = stockListModel.sellerName ?? '';
    final String buyAddress = stockListModel.buyAddress ?? '';
    final String sellerAddress = stockListModel.sellerAddress ?? '';
    final String buyPrice = stockListModel.buyPrice ?? '';
    final String salePrice = stockListModel.salePrice ?? '';
    final String phone = stockListModel.phone ?? '';
    final String color = stockListModel.color ?? '';
    final dynamic purchasedAt = stockListModel.purchasedAt ?? '';
    final bool hasPendency = stockListModel.hasPendency;
    final dynamic sellerAt = stockListModel.sellerAt;

    return InkWell(
      onTap: isSold
          ? null
          : () async {
              final result = await Modular.to.push(MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                        stockListModel: stockListModel,
                      )));

              if (result is FreezedStatusSuccess) {
                HenrySnackbar.show(
                    text: 'Dados salvos com sucesso!',
                    status: HenrySnackbarStatus.success);
                resetAll?.call();
              }
            },
      child: Opacity(
        opacity: hasPendency ? 0.7 : 1,
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: isSold
                ? _SaleCardWidget(
                    categoryName: categoryName,
                    color: color,
                    buyName: buyName,
                    buyPrice: buyPrice,
                    salePrice: salePrice,
                    sellerName: sellerName,
                    purchasedAt: purchasedAt,
                    saleAt: sellerAt,
                    buyAddress: buyAddress,
                    sellerAddress: sellerAddress,
                  )
                : _BuyCardWidget(
                    categoryName: categoryName,
                    color: color,
                    purchasedAt: purchasedAt,
                    name: buyName,
                    price: buyPrice,
                    address: buyAddress,
                    phone: phone,
                    hasPendency: hasPendency,
                  )),
      ),
    );
  }
}

class _SaleCardWidget extends StatelessWidget {
  final String categoryName;
  final String? color;
  final dynamic saleAt;
  final dynamic purchasedAt;
  final String buyName;
  final String buyPrice;
  final String salePrice;
  final String sellerName;
  final String buyAddress;
  final String sellerAddress;

  const _SaleCardWidget({
    required this.categoryName,
    this.color,
    this.saleAt,
    required this.buyName,
    this.purchasedAt,
    required this.buyPrice,
    required this.salePrice,
    required this.sellerName,
    required this.buyAddress,
    required this.sellerAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: BrechoSpacing.xii, vertical: BrechoSpacing.xvi),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: bd.Badge(
                  child: categoryName,
                  color: color,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: BrechoSpacing.viii),
            child: Divider(),
          ),
          RichText(
            text: TextSpan(
              children: [
                const Text('Compra: ').labelLargeRegular().toTextSpan(),
                Text(FormatHelper.formatDDMMYYYY(purchasedAt))
                    .labelSmallBold()
                    .toTextSpan(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.xii),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const Text('Nome: ').labelLargeRegular().toTextSpan(),
                      Text(buyName).labelLargeMedium().toTextSpan(),
                    ],
                  ),
                ),
                Expanded(
                    child: Text(
                  FormatHelper.currency(buyPrice),
                  textAlign: TextAlign.end,
                ).labelLargeRegular())
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: BrechoSpacing.xii),
            child: RichText(
              text: TextSpan(
                children: [
                  const Text('Endereço: ').labelLargeRegular().toTextSpan(),
                  Text(
                    buyAddress,
                    softWrap: true,
                  ).labelLargeMedium().toTextSpan(),
                ],
              ),
            ),
          ),
          const Divider(),
          const SizedBox(
            height: BrechoSpacing.xii,
          ),
          RichText(
            text: TextSpan(
              children: [
                const Text('Venda: ').labelLargeRegular().toTextSpan(),
                Text(FormatHelper.formatDDMMYYYY(saleAt))
                    .labelSmallBold()
                    .toTextSpan()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.xii),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const Text('Nome: ').labelLargeRegular().toTextSpan(),
                      Text(sellerName).labelLargeMedium().toTextSpan(),
                    ],
                  ),
                ),
                Expanded(
                    child: Text(
                  FormatHelper.currency(salePrice),
                  textAlign: TextAlign.end,
                ).labelLargeRegular())
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: BrechoSpacing.xii),
            child: RichText(
              text: TextSpan(
                children: [
                  const Text(
                    'Endereço: ',
                    softWrap: true,
                  ).labelLargeRegular().toTextSpan(),
                  Text(
                    sellerAddress,
                    softWrap: true,
                  ).labelLargeMedium().toTextSpan(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BuyCardWidget extends StatelessWidget {
  final String categoryName;
  final String? color;
  final dynamic purchasedAt;
  final String name;
  final String price;
  final String address;
  final String phone;
  final bool hasPendency;

  const _BuyCardWidget({
    required this.categoryName,
    required this.color,
    required this.purchasedAt,
    required this.name,
    required this.price,
    required this.address,
    required this.phone,
    required this.hasPendency,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: BrechoSpacing.xii, vertical: BrechoSpacing.xvi),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bd.Badge(
                child: categoryName,
                color: color,
              ),
              Text(FormatHelper.formatDDMMYYYY(purchasedAt)).labelSmallBold(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: BrechoSpacing.xii),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: BrechoSpacing.xii),
                  child: Text(address).labelLargeRegular(),
                )
              ],
            ),
          ),
          Row(
            children: [
              const Icon(BrechoIcons.local_phone),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: BrechoSpacing.xii),
                child:
                    Text(FormatHelper.formatPhone(phone)).labelLargeRegular(),
              ),
              const Expanded(child: SizedBox()),
              if (hasPendency)
                SizedBox.square(
                  dimension: BrechoSpacing.xxxii,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: BrechoColors.monoWhite),
                    child: const Icon(
                      BrechoIcons.warning,
                      color: BrechoColors.responseWarning,
                    ),
                  ),
                )
            ],
          )
        ],
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
