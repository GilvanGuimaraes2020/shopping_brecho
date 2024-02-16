import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';

part 'main_controller.g.dart';

class MainController = _MainController with _$MainController;

abstract class _MainController with Store{
  final IRemoteConfig _rcService;

  _MainController(this._rcService);

void init(){
  _rcService.init();
}

}
