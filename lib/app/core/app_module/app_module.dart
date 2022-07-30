import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';

class AppModule extends Module{
   @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(AppRoute.home, child: (context, args) => const HomePage()),
  ];
}