
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';

abstract class IRemoteConfig{
Future<void> init();

String getTeste();
List<LabelValueModel>? getCategory();
List<LabelValueModel>? getPaymentType();
}
