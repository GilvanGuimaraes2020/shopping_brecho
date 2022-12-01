import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

const _underItalic = TextStyle(
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline,
    decorationColor: Colors.black87);

const _h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: BrechoColors.secondaryBlue5);

const _h2 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: BrechoColors.secondaryBlue5);

const _h3 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: BrechoColors.secondaryBlue5);

const _h4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: BrechoColors.secondaryBlue5);

const _h5 = TextStyle(
    fontSize: 13,
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

  Text h4Thin({TextStyle? style}) {
    const TextStyle defaultStyle = _h4;
    return Text(
      data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
      key: key,
      maxLines: maxLines,
    );
  }

  Text h2Medium({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(
        fontWeight: FontWeight.w500, decoration: TextDecoration.none));
    return Text(
      data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
    );
  }

  Text h2MediumItalicUnder({TextStyle? style}) {
    final TextStyle defaultStyle = _h2
        .merge(const TextStyle(fontWeight: FontWeight.w500))
        .merge(_underItalic);
    return Text(
      data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
    );
  }

  Text h2MediumBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(
        fontWeight: FontWeight.bold, decoration: TextDecoration.none));
    return Text(
      data!,
      style: (this.style ?? defaultStyle).merge(this.style ?? defaultStyle),
    );
  }

  Text h4Medium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _h4.merge(const TextStyle(fontWeight: FontWeight.w500));
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
