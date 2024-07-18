import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/customer_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/results_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/stock_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/repositories/account_repository.dart';
import 'package:shopping_brecho/app/core/repositories/kanban_repository.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/customer_repository.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/product_repository.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/results_repository.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/stock_repository.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/core/service/database/conn/conn.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/main/main_store.dart';
import 'package:shopping_brecho/app/module/homepage/home_controller.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';
import 'package:shopping_brecho/app/module/kanban/components/edit_card_controller.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_controller.dart';
import 'package:shopping_brecho/app/module/main_page/main_controller.dart';
import 'package:shopping_brecho/app/module/main_page/main_page.dart';
import 'package:shopping_brecho/app/module/products/product_detail/product_detail_controller.dart';
import 'package:shopping_brecho/app/module/products/product_list/product_list_controller.dart';
import 'package:shopping_brecho/app/module/products/register_client/main_client_controller.dart';
import 'package:shopping_brecho/app/module/products/register_client/main_client_page.dart';
import 'package:shopping_brecho/app/module/products/register_client/register_client_controller.dart';
import 'package:shopping_brecho/app/module/products/register_client/register_client_page.dart';
import 'package:shopping_brecho/app/module/products/register_product/register_product_controller.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_controller.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_page.dart';
import 'package:shopping_brecho/app/module/register_expense/register_expense_controller.dart';
import 'package:shopping_brecho/app/module/register_expense/register_expense_page.dart';
import 'package:shopping_brecho/app/module/register_sale/register_sale_controller.dart';
import 'package:shopping_brecho/app/module/results/results_controller.dart';
import 'package:shopping_brecho/app/services/remote_config_service.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    //repositories
    i.add<IAccountRepositoy>(AccountRepository.new);
    i.add<IKanbanRepository>(KanbanRepository.new);
    i.add<IProductRepository>(
      ProductRepository.new,
    );
    i.add<ICustomerRepository>(CustomerRepository.new);
    i.add<IStockRepository>(StockRepository.new);
    i.add<IResultsRepository>(ResultsRepository.new);
    //end repositories

    //page controller
    i.add(HomeController.new);
    i.add(EditCardController.new);
    i.add(KanbanController.new);
    i.add(RegisterExpenseController.new);
    i.add(MainController.new);
    i.add(RegisterProductController.new);
    i.add(ProductListController.new);
    i.add(ProductDetailController.new);
    i.add(RegisterSaleController.new);
    i.add(RegisterClientController.new);
    i.add(MainClientController.new);
    i.add(RegisterBuyController.new);
    i.add(ResultsController.new);
    //services
    i.addSingleton<RemoteDatabase>(Conn.new);
    i.addLazySingleton<IRemoteConfig>(RemoteConfigService.new);
    // end service
    i.addLazySingleton(BuyAndSaleProductStore.new);
    i.addLazySingleton(MainStore.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(AppRoute.home, child: (context) => const HomePage());
    r.child(AppRoute.main, child: (context) => const MainPage());
    r.child(AppRoute.registerExpense,
        child: (context) => const RegisterExpensePage());
    r.child(AppRoute.registerBuy, child: (context) => const RegisterBuyPage());
    r.child(AppRoute.mainClient, child: (context) => const MainClientPage());
    r.child(AppRoute.registerClient, child: (context) => RegisteClientPage());
  }
}
