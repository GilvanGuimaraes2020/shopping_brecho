import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';

class CardAccountsDue extends StatelessWidget {
  final List<AccountAlertModel> accountAlert;
  const CardAccountsDue({super.key, required this.accountAlert});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
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
            Expanded(
              child: ListView.builder(
                  itemCount: accountAlert.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(accountAlert[index].account!),
                        Text(accountAlert[index].due.toString()),
                        Text(accountAlert[index].value.toString()),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
      const Positioned(top: 10, right: 10, child: Text('5'))
    ]);
  }

  Widget get titleCard => const Text("Card das contas vencer");
}
