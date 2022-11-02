import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/module/homepage/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.lightGreen),
          child: ElevatedButton(
              onPressed: () {
                Modular.to.push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Ir para Home')),
        ));
  }
}
