import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class CardHomePage extends StatelessWidget {
  const CardHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BrechoSpacing.vi),
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
            height: 2,
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

//Testando StringExtension
  Widget get titleCard => Row(
        children: [
          const Text("Movimento financeiro"),
          IconButton(onPressed: () {}, icon: const Icon(Icons.list))
        ],
      );

  Widget get bodyCard => Container(
        padding: const EdgeInsets.all(BrechoSpacing.xvi),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: BrechoColors.neutral5),
        child: Column(
          children: const [
            Text('conta'),
            Text('Total'),
            Text('Ultima movimentaçao'),
            Text("botao p lançamento")
          ],
        ),
      );
}
