import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/component/brecho_nav_bar.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/store/buy_and_sale/main/main_store.dart';

part 'main_controller.g.dart';

class MainController = _MainController with _$MainController;

abstract class _MainController with Store{
  final IRemoteConfig _rcService;
  final MainStore mainStore;

  _MainController(this._rcService, this.mainStore);

void init(){
  _rcService.init();
}

List<BrechoNavBarItem> get navBar => mainStore.navBar;

@computed 
PageController get pageController => mainStore.pageController;



}
