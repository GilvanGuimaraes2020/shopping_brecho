import 'package:shopping_brecho/app/core/models/client_model/client_model.dart';

abstract class IClientRepository {
  Future<Client> getClients();
}
