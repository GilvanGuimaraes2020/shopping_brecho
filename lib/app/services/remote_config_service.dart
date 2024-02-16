import 'dart:convert';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';

class RemoteConfigService implements IRemoteConfig {
  late FirebaseRemoteConfig _remoteConfig;
  late FirebaseCrashlytics _crashlytics;

  @override
  Future<void> init() async {
    _remoteConfig = FirebaseRemoteConfig.instance;

    await _remoteConfig.ensureInitialized();
    try {
      await _remoteConfig.fetchAndActivate();
    } catch (e) {
      return;
    }
  }

  @override
  String getTeste() {
    try {
      return _remoteConfig.getString('teste');
    } catch (e) {
      return '';
    }
  }

  @override
  List<LabelValueModel>? getCategory() {
    try {
      final List<LabelValueModel> values = [];
      final json =
          jsonDecode(_remoteConfig.getString('register_expense'))['category'];
      json.forEach((e) {
        values.add(LabelValueModel.fromJson(e as Map<String, dynamic>));
      });
      return values;
    } catch (e, s) {
      _crashlytics.recordError(e, s);
      return null;
    }
  }

  @override
  List<LabelValueModel>? getPaymentType() {
    try {
      final List<LabelValueModel> values = [];
      final json = jsonDecode(
          _remoteConfig.getString('register_expense'))['payment_type'];
      json.forEach((e) {
        values.add(LabelValueModel.fromJson(e as Map<String, dynamic>));
      });
      return values;
    } catch (e, s) {
      _crashlytics.recordError(e, s);
      return null;
    }
  }
}
