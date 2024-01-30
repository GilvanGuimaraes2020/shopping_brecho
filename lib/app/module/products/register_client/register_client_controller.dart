
import 'package:mobx/mobx.dart';

part 'register_client_controller.g.dart';

class RegisterClientController = _RegisterClientControllerBase with _$RegisterClientController;

abstract class _RegisterClientControllerBase with Store{

List<ClientModel> modules = [
  ClientModel(name: "Teste um", createdAt: "22/10/2023", phone: "1699999999", address: "Rua teste um"),
  ClientModel(name: "Teste Dois", createdAt: "23/10/2023", phone: "1699999999", address: "Rua teste dois"),
  ClientModel(name: "Teste Tres", createdAt: "23/10/2023", phone: "1699999999", address: "Rua teste dois"),
];

}

class ClientModel {
  final String name;
  final String createdAt;
  final String phone;
  final String address;

  ClientModel({required this.name, required this.createdAt, required this.phone, required this.address});
}
