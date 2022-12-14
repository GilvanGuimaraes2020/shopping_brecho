import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';
import 'package:shopping_brecho/app/core/models/account_register_model/account_register_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IAccountRepositoy _repository;

  _HomeControllerBase(this._repository);

  @observable
  bool? connect;

  @observable
  AccountAlert accountAlert = AccountAlert.none();

  @observable
  AccountRegister accountRegister = AccountRegister.none();

  @observable
  List<double?> totalCategoryAccount = [];

  @action
  void init() {
    getAccountAlert();
    getMovementAccountControl();
    getMovementAccountRegister();
  }

  @action
  Future<void> getAccountAlert() async {
    accountAlert = await _repository.getAccountAlert();
  }

  @action
  Future<void> getMovementAccountControl() async {
    await _repository.getMovementAccountControl();
  }

  @action
  Future<void> getMovementAccountRegister() async {
    accountRegister = AccountRegister.loading();
    accountRegister = await _repository.getMovementAccountRegister();
  }

  @computed
  List<AccountAlertModel> get accountAlertList =>
      accountAlert.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<AccountRegisterModel> get accountRegisterModel =>
      accountRegister.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  String? get registersTotal => accountRegister.maybeWhen(
      data: (data) {
        final accountValue = data
            .map((e) => e.registers!.map((x) => x.accountValue))
            .expand((element) => element)
            .toList();

        return accountValue
            .reduce((value, element) => value! + element!)
            .toString();
      },
      orElse: () => null);

  @computed
  List<double?> get totalCategory => accountRegister.maybeWhen(
      data: (data) {
        return data
            .map((e) => e.registers!
                .map((x) => x.accountValue)
                .reduce((value, element) => value! + element!))
            .toList();
      },
      orElse: () => []);
}
