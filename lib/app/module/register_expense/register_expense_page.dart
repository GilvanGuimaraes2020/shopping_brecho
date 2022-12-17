import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class RegisterExpensePage extends StatefulWidget {
  const RegisterExpensePage({super.key});

  @override
  State<RegisterExpensePage> createState() => _RegisterExpensePageState();
}

class _RegisterExpensePageState extends State<RegisterExpensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar despesa'),
        backgroundColor: BrechoColors.neutral1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(BrechoSpacing.x),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            TextField(),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            TextField(),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
          ],
        ),
      ),
    );
  }
}
