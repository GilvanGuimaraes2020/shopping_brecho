import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/cupertino.dart';

const _h1 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: BrechoColors.secondaryBlue5);

extension TextTypograph on Text {
  Text h1Thin({TextStyle? style}) {
    const TextStyle defaultStyle = _h1;
    return Text(
      this.data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
    );
  }
}
