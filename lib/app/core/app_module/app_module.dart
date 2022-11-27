import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/repositories/account_repository.dart';
import 'package:shopping_brecho/app/core/repositories/kanban_repository.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/module/homepage/home_controller.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';
import 'package:shopping_brecho/app/module/kanban/kanban_controller.dart';
import 'package:shopping_brecho/app/module/main_page/main_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IAccountRepositoy>((i) => AccountRepository()),
        Bind<IKanbanRepository>((i) => KanbanRepository()),
        Bind.factory((i) => HomeController(i())),
        Bind.factory((i) => KanbanController(i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.home, child: (context, args) => const HomePage()),
        ChildRoute(AppRoute.main, child: (context, args) => const MainPage())
      ];
}
