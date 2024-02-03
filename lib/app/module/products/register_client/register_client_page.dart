import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';

class RegisteClientPage extends StatefulWidget {
  @override
  State<RegisteClientPage> createState() => _RegisterClientPage();
}

class _RegisterClientPage extends State<RegisteClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(children: const [
          BrechoTextField(
            label: 'Nome do cliente',
          ),
          SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoTextField(
            label: 'Telefone do cliente',
          ),
          SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoTextField(
            label: 'Endereço do cliente',
          ),
          SizedBox(
            height: BrechoSpacing.xvi,
          ),
          BrechoTextField(
            label: 'Observação',
            maxLines: 5,
          ),
        ]),
      ),
    );
  }
}
