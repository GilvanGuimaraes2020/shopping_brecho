import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

const _h1 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: BrechoColors.secondaryBlue5);

const _h2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: BrechoColors.secondaryBlue5);

const _h5 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: BrechoColors.monoBlack,
    decoration: TextDecoration.none);

extension TextTypograph on Text {
  Text h1Thin({TextStyle? style}) {
    final TextStyle defaultStyle =
        _h1.merge(const TextStyle(fontWeight: FontWeight.w100));
    return Text(data!,
        style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
        key: key);
  }

  Text h2Thin({TextStyle? style}) {
    const TextStyle defaultStyle = _h2;
    return Text(
      data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
      key: key,
      maxLines: maxLines,
    );
  }

  Text h2Medium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _h2.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(
      data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
    );
  }

  Text h5Thin({TextStyle? style}) {
    const TextStyle defaultStyle = _h5;
    return Text(
      data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
    );
  }
}
