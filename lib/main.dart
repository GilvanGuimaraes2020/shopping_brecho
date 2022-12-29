import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/core/app_module/app_module.dart';
import 'package:shopping_brecho/app_widget.dart';
import 'package:shopping_brecho/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterError.onError = (erroDetails) =>
      FirebaseCrashlytics.instance.recordFlutterFatalError(erroDetails);

  PlatformDispatcher.instance.onError = (e, s) {
    FirebaseCrashlytics.instance.recordError(e, s, fatal: true);
    return true;
  };

  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
