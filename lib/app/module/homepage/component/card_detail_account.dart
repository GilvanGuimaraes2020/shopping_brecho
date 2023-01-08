import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/helpers/extension/extension.dart';

enum IconIndication {
  superMarket('SUPERMARKET'),
  drogstore('DROGSTORE'),
  vehicle('VEHICLE'),
  pet('PET'),
  undefined('UNDEFINED');

  const IconIndication(this.type);

  final String type;
}

extension IconIndicationExtension on IconIndication {
  IconData get iconIndication {
    switch (this) {
      case IconIndication.drogstore:
        return const IconData(0xe39e, fontFamily: 'MaterialIcons');
      case IconIndication.superMarket:
        return const IconData(0xe395, fontFamily: 'MaterialIcons');
      case IconIndication.pet:
        return const IconData(0xe4a1, fontFamily: 'MaterialIcons');
      case IconIndication.vehicle:
        return const IconData(0xe1d7, fontFamily: 'MaterialIcons');
      default:
        return const IconData(0xe491, fontFamily: 'MaterialIcons');
    }
  }
}

IconIndication? iconIndicationByValue(String? value) {
  switch (value) {
    case 'SUPERMARKET':
      return IconIndication.superMarket;
    case 'DROGSTORE':
      return IconIndication.drogstore;
    case 'VEHICLE':
      return IconIndication.vehicle;
    case 'PET':
      return IconIndication.pet;
    default:
      return null;
  }
}

class CardDetailAccount extends StatelessWidget {
  final String? detail;
  final String? buyDate;
  final String? price;
  final bool isBigger;
  final String? typeName;
  const CardDetailAccount(
      {super.key,
      this.detail,
      this.buyDate,
      this.price,
      this.isBigger = false,
      this.typeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BrechoSpacing.vi),
      margin: const EdgeInsets.all(BrechoSpacing.vi),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            BrechoColors.primaryBlue10,
            if (isBigger)
              BrechoColors.responseDanger
            else
              BrechoColors.primaryBlue8,
          ], begin: Alignment.center, end: Alignment.topCenter)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Text(detail ?? '').bodySmallSemiBold(),
              Row(
                children: [
                  SizedBox(
                      width: 200,
                      child: Text(buyDate ?? '').bodySmallRegular()),
                  Text('R\$ $price').bodySmallRegular()
                ],
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: BrechoSpacing.xx),
            child: Icon(iconIndicationByValue(typeName)?.iconIndication),
          )
        ],
      ),
    );
  }
}
