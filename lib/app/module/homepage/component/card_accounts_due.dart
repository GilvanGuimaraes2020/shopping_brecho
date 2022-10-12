import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class CardAccountsDue extends StatelessWidget {
  const CardAccountsDue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BrechoSpacing.xvi),
      margin: const EdgeInsets.all(BrechoSpacing.vi),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              colors: [BrechoColors.primaryBlue5, BrechoColors.primaryBlue8],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Column(
        children: [
          titleCard,
          const SizedBox(
            height: BrechoSpacing.viii,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return bodyCard;
                }),
          ),
        ],
      ),
    );
  }

  Widget get titleCard => const Text("Card das contas vencer");

  Widget get bodyCard => Container(
        padding: const EdgeInsets.all(BrechoSpacing.xvi),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: BrechoColors.neutral5),
        child: Column(
          children: [
            const Text('Conta x'),
            const Text('Data Criaçao'),
            Row(
              children: const [Text('valor'), Text('Botão')],
            )
          ],
        ),
      );
}
