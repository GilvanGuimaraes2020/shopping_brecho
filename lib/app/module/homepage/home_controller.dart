import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/teste_repository_interface.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ItesteRepository _repository;

  _HomeControllerBase(this._repository);

  @observable
  bool? connect;

  @action
  void init() {
    getFirebase();
  }

  @action
  Future<void> getFirebase() async {
    await _repository.getTestFirebase();
  }
}
