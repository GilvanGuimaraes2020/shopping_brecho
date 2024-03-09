import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_nav_bar.dart';
import 'package:shopping_brecho/app/module/main_page/main_controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = Modular.get<MainController>();

  @override
  void initState() {
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (context) {
        return PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          children: controller.mainStore.mainPages.values.toList(),
        );
      }),
      bottomNavigationBar: Observer(builder: (context) {
        return BrechoNavBar(
          items: controller.navBar,
          selectedIndex: controller.mainStore.currentMainPage,
          onItemSelected: controller.mainStore.onBottomNavigatorTap,
        );
      }),
    );
  }
}
