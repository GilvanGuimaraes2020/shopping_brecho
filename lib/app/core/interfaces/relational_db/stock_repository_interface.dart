import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_pendency/product_pendency_model.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_model.dart';
import 'package:shopping_brecho/app/core/models/register_sale/register_sale_model.dart';

abstract class IStockRepository {
  Future<FreezedStatus> saveProductStock(
      ProductStockModel stock, List<int> pendencies);
  Future<FreezedStatus> getAllProductsStock(
      {required Map<String, dynamic> filters});
  Future<FreezedStatus<List<ProductPendencyModel>>> getAllPendency();
  Future<FreezedStatus> saveSaleProduct({required RegisterSaleModel model, required bool isCreditCard, required String qtyInstallments});
}
