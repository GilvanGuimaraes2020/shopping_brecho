import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/app_module/app_module.dart';
import 'package:shopping_brecho/app_widget.dart';

void main() {
  runApp(ModularApp(module:AppModule() , child: const AppWidget(),));
}

