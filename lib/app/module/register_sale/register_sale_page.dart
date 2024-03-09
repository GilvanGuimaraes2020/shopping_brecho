import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class RegisterSalePage extends StatefulWidget {
  const RegisterSalePage({super.key});

  @override
  State<RegisterSalePage> createState() => _RegisterSalePageState();
}

class _RegisterSalePageState extends State<RegisterSalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Realizar venda').labelSmallRegular(),
      ),
      body: CustomScrollView(
        
      ),
    );
  }
}
