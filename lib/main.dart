import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/app_module/app_module.dart';
import 'package:shopping_brecho/app_widget.dart';

import 'package:shopping_brecho/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  runApp(ModularApp(module:AppModule() , child: const AppWidget(),));
}
