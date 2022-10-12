import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({Key? key}) : super(key: key);

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
          TextField(
            decoration: InputDecoration(label: Text('Nome')),
          ),
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
