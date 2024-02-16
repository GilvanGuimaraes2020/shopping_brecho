import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';

abstract class ICustomerRepository {
  Future<CustomerState> getAllCustomer();
  Future<CustomerState> addCustomer({required CustomerModel payload});
}
