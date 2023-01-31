import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/client_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/client_model/client_model.dart';

part 'register_buy_controller.g.dart';

class RegisterBuyController = _RegisterBuyControllerBase
    with _$RegisterBuyController;

abstract class _RegisterBuyControllerBase with Store {
  final IClientRepository _clientRepository;

  _RegisterBuyControllerBase(this._clientRepository) {
    init();
  }

  void init() {
    getClients();
  }

  @observable
  Client client = const Client.none();

  @action
  Future<void> getClients() async {
    client = const Client.loading();
    client = await _clientRepository.getClients();
  }

  @computed
  List<String>? get titles => listClient.map((e) => e.name ?? '').toList();

  @computed
  List<String>? get subtitles => listClient.map((e) => e.phone ?? '').toList();

  @computed
  List<ClientModel> get listClient =>
      client.maybeWhen(data: (client) => client, orElse: () => []);
}
