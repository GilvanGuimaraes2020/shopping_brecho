import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';

abstract class ICustomerRepository {
  Future<FreezedStatus<List<CustomerModel>>> getAllCustomer(
      {Map<String, dynamic>? filters});
  Future<FreezedStatus> addCustomer({required CustomerModel payload});
}
