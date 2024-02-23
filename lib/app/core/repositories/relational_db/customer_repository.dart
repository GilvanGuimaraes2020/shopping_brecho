import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shopping_brecho/app/core/interfaces/relational_db/customer_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/customer/customer_model.dart';
import 'package:shopping_brecho/app/core/models/freezed_status/freezed_status.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';

class CustomerRepository implements ICustomerRepository {
  final RemoteDatabase _remoteDatabase;

  CustomerRepository(this._remoteDatabase);

  @override
  Future<FreezedStatus<List<CustomerModel>>> getAllCustomer(
      {Map<String, dynamic>? filters}) async {
    try {
      final filter = filters?['keyword'] == null
          ? ''
          : " where lower(name) LIKE lower('${filters!['keyword']}%')";
      final result =
          await _remoteDatabase.query("SELECT * FROM customer_table$filter;");

      final List<CustomerModel> values = [];

      for (final e in result) {
        values.add(CustomerModel.fromJson(
            e['customer_table'] as Map<String, dynamic>));
      }

      return FreezedStatus.data(values);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }

  @override
  Future<FreezedStatus> addCustomer({required CustomerModel payload}) async {
    try {
      final valuesToInsert =
          "'${payload.name}', '${payload.phone}', '${payload.address}', '${payload.neighborhood}', '${payload.number}', '${DateTime.now().toUtc()}'";
      final result = await _remoteDatabase.query(
          'INSERT INTO customer_table (name, phone, address, neighborhood, number, created_at) VALUES ($valuesToInsert) returning id');

      return FreezedStatus.success(result);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return FreezedStatus.error(e);
    }
  }
}
