import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IAccountRepositoy _repository;

  _HomeControllerBase(this._repository);

  @observable
  bool? connect;

  @observable
   AccountAlert accountAlert = AccountAlert.none();

  @action
  void init() {
    getFirebase();
  }

  @action
  Future<void> getFirebase() async {
    accountAlert = await _repository.getAccountAlert();
  }

  @computed 
  List<AccountAlertModel> get accountAlertList => accountAlert.maybeWhen(
    data: (data) => data,
    orElse: ()=> []);
}
