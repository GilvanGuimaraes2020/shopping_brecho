import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/routes/app_route.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AppRoute.main);

    return MaterialApp.router(
        scaffoldMessengerKey: BrechoSnackbar.rootMessengerState,
        title: 'Cis Artigos',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            unselectedWidgetColor: BrechoColors.neutral7),
        debugShowCheckedModeBanner: false,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate);
  }
}
