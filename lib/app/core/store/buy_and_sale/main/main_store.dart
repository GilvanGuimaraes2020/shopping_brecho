import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/component/brecho_icons.dart';
import 'package:shopping_brecho/app/component/brecho_nav_bar.dart';
import 'package:shopping_brecho/app/component/unavailable_page.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';
import 'package:shopping_brecho/app/module/products/product_list/product_list_page.dart';
import 'package:shopping_brecho/app/module/results/results_page.dart';

part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  _MainStore();

  late PageController pageController =
      PageController(initialPage: currentMainPage);

  Map<MainPageViewEnum, Widget> mainPages = {
    MainPageViewEnum.home: const HomePage(),
    MainPageViewEnum.store: const ProductListPage(),
    MainPageViewEnum.dashboard: const ResultsPage(),
    MainPageViewEnum.schedule: const UnavailablePage(),
  };

  final List<BrechoNavBarItem> navBar = [
    BrechoNavBarItem(icon: BrechoIcons.home, title: 'Casa'),
    BrechoNavBarItem(icon: BrechoIcons.store, title: 'Loja'),
    BrechoNavBarItem(icon: BrechoIcons.dashboard, title: 'Gráfico'),
    BrechoNavBarItem(icon: BrechoIcons.schedule, title: 'Agenda'),
  ];

  @observable
  int currentMainPage = 0;

  @action
  void onBottomNavigatorTap(int index) {
    currentMainPage = index;
    pageController.jumpToPage(currentMainPage);
  }
}

enum MainPageViewEnum {
  home('Casa'),
  store('Loja'),
  dashboard('Gráficos'),
  schedule('Agenda');

  const MainPageViewEnum(this.label);

  final String label;
}
