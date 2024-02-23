import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/models/product_stock/product_stock_model.dart';

abstract class IStockRepository{
  Future<FreezedStatus> saveProductStock(ProductStockModel  stock) ;
}
