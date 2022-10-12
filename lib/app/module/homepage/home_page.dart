import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/module/homepage/component/card_accounts_due.dart';
import 'package:shopping_brecho/app/module/homepage/component/card_homepage.dart';
import 'package:shopping_brecho/app/module/homepage/component/card_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) :super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Pagina Principal"),
        ),
        body: Column(
          children: const [
            Expanded(child: CardAccountsDue()),
            Expanded(child: CardStore()),
            Expanded(child: CardHomePage()),
          ],
        ));
  }
}
