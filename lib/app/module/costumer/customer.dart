import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de clientes"),
      ),
      body: Form(
          child: Column(
        children: const [
          BrechoTextField(),
          SizedBox(height: BrechoSpacing.iv),
          ElevatedButton(
            onPressed: null,
            child: Text("data"),
          )
        ],
      )),
    );
  }
}
