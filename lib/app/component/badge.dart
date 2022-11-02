import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/cupertino.dart';

class Badge extends StatelessWidget {
  final String child;
  const Badge({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BrechoSpacing.vi),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: BrechoColors.primaryBlue9),
      child: Text(
        child,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
