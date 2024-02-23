import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/customer_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/product_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/stock_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/repositories/account_repository.dart';
import 'package:shopping_brecho/app/core/repositories/kanban_repository.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/customer_repository.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/product_repository.dart';
import 'package:shopping_brecho/app/core/repositories/relational_db/stock_repository.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/core/service/database/conn/conn.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale_product_store.dart';
import 'package:shopping_brecho/app/module/homepage/home_controller.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';
import 'package:shopping_brecho/app/module/kanban/components/edit_card_controller.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_controller.dart';
import 'package:shopping_brecho/app/module/main_page/main_controller.dart';
import 'package:shopping_brecho/app/module/main_page/main_page.dart';
import 'package:shopping_brecho/app/module/products/register_client/main_client_controller.dart';
import 'package:shopping_brecho/app/module/products/register_client/main_client_page.dart';
import 'package:shopping_brecho/app/module/products/register_client/register_client_controller.dart';
import 'package:shopping_brecho/app/module/products/register_client/register_client_page.dart';
import 'package:shopping_brecho/app/module/products/register_product/register_product_controller.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_controller.dart';
import 'package:shopping_brecho/app/module/register_buy/register_buy_page.dart';
import 'package:shopping_brecho/app/module/register_expense/register_expense_controller.dart';
import 'package:shopping_brecho/app/module/register_expense/register_expense_page.dart';
import 'package:shopping_brecho/app/services/remote_config_service.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IAccountRepositoy>((i) => AccountRepository()),
        Bind<IKanbanRepository>((i) => KanbanRepository()),
        Bind<IRemoteConfig>((i) => RemoteConfigService()),
        Bind<IProductRepository>((i) => ProductRepository(i.get())),
        Bind<ICustomerRepository>((i) => CustomerRepository(i.get())),
        Bind<IStockRepository>((i) => StockRepository(i.get())),
        Bind.factory((i) => HomeController(i(), i())),
        Bind.factory((i) => EditCardController(i())),
        Bind.factory((i) => KanbanController(i())),
        Bind.factory((i) => RegisterExpenseController(i.get(), i.get())),
        Bind.factory((i) => MainController(i.get())),
        Bind.factory((i) => RegisterProductController(i.get())),
        Bind.factory(
            (i) => RegisterClientController(i.get<BuyAndSaleProductStore>())),
        Bind.factory(
            (i) => MainClientController(i.get<BuyAndSaleProductStore>())),
        Bind.factory((i) => RegisterBuyController(
              i.get<BuyAndSaleProductStore>(),
            )),
        Bind.singleton<RemoteDatabase>(
          (i) => Conn(),
        ),
        Bind.lazySingleton((i) => BuyAndSaleProductStore(i.get(), i.get(), i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.home, child: (context, args) => const HomePage()),
        ChildRoute(AppRoute.main, child: (context, args) => const MainPage()),
        ChildRoute(
          AppRoute.registerExpense,
          child: (context, _) => const RegisterExpensePage(),
        ),
        ChildRoute(
          AppRoute.registerBuy,
          child: (context, _) => const RegisterBuyPage(),
        ),
        ChildRoute(
          AppRoute.mainClient,
          child: (context, _) => const MainClientPage(),
        ),
        ChildRoute(
          AppRoute.registerClient,
          child: (context, _) => RegisteClientPage(),
        )
      ];
}
