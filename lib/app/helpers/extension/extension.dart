import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

const _fontFamily = 'Inter';

const _h1 =  TextStyle(
  fontFamily: _fontFamily,
  fontSize: 48,
  fontStyle: FontStyle.normal,
  letterSpacing: -1.2,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _h2 =  TextStyle(
  fontFamily: _fontFamily,
  fontSize: 40,
  fontStyle: FontStyle.normal,
  letterSpacing: -1,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _h3 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 32,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.8,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _h4 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 24,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.6,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _h5 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 20,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.5,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _h6 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.4,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _bodyLarge = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 18,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.45,
  height: 1.33,
  color: BrechoColors.secondaryBlue5,
);

const _bodyMedium = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.4,
  height: 1.38,
  color: BrechoColors.secondaryBlue5,
);

const _bodySmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.35,
  height: 1.43,
  color: BrechoColors.secondaryBlue5,
);

const _bodyExtraSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 12,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.3,
  height: 1.33,
  color: BrechoColors.secondaryBlue5,
);

const _bodyTiny = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 10,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.25,
  height: 1.4,
  color: BrechoColors.secondaryBlue5,
);

const _labelExtraLarge = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 20,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.3,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _labelLarge = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 18,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.3,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _labelMedium = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.4,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _labelSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.3,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _labelExtraSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 12,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.3,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

const _labelTiny = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 10,
  fontStyle: FontStyle.normal,
  letterSpacing: -0.25,
  height: 1,
  color: BrechoColors.secondaryBlue5,
);

extension BrechoTypographyExtession on Text {
  // h1
  Text h1Thin({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w100));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1ExtraLight({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w200));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Light({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w300));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Regular({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w400));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Medium({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1SemiBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Bold({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w700));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1ExtraBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w800));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Black({TextStyle? style}) {
    final TextStyle defaultStyle = _h1.merge(const TextStyle(fontWeight: FontWeight.w900));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h2
  Text h2Thin({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w100));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2ExtraLight({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w200));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Light({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w300));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Regular({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w400));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Medium({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2SemiBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Bold({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w700));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2ExtraBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w800));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Black({TextStyle? style}) {
    final TextStyle defaultStyle = _h2.merge(const TextStyle(fontWeight: FontWeight.w900));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h3
  Text h3Thin({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w100));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3ExtraLight({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w200));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Light({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w300));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Regular({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w400));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Medium({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3SemiBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Bold({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w700));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3ExtraBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w800));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Black({TextStyle? style}) {
    final TextStyle defaultStyle = _h3.merge(const TextStyle(fontWeight: FontWeight.w900));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h4
  Text h4Thin({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w100));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4ExtraLight({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w200));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Light({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w300));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Regular({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w400));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Medium({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4SemiBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Bold({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w700));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4ExtraBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w800));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Black({TextStyle? style}) {
    final TextStyle defaultStyle = _h4.merge(const TextStyle(fontWeight: FontWeight.w900));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h5
  Text h5Thin({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w100));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5ExtraLight({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w200));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Light({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w300));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Regular({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w400));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Medium({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5SemiBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Bold({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w700));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5ExtraBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w800));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Black({TextStyle? style}) {
    final TextStyle defaultStyle = _h5.merge(const TextStyle(fontWeight: FontWeight.w900));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h6
  Text h6Thin({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w100));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6ExtraLight({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w200));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Light({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w300));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Regular({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w400));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Medium({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6SemiBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Bold({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w700));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6ExtraBold({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w800));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Black({TextStyle? style}) {
    final TextStyle defaultStyle = _h6.merge(const TextStyle(fontWeight: FontWeight.w900));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Large
  Text bodyLargeBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyLarge.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyLargeSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyLarge.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyLargeMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyLarge.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyLargeRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyLarge.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Medium
  Text bodyMediumBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyMedium.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyMediumSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyMedium.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyMediumMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyMedium.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyMediumRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyMedium.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Small
  Text bodySmallBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodySmall.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodySmallSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodySmall.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodySmallMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodySmall.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodySmallRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodySmall.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Extra Small
  Text bodyExtraSmallBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyExtraSmall.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyExtraSmallSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyExtraSmall.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyExtraSmallMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyExtraSmall.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyExtraSmallRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyExtraSmall.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Tiny
  Text bodyTinyBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyTiny.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyTinySemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyTiny.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyTinyMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyTiny.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyTinyRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _bodyTiny.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Extra Large
  Text labelExtraLargeBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraLarge.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraLargeSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraLarge.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraLargeMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraLarge.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraLargeRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraLarge.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Large
  Text labelLargeBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelLarge.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelLargeSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelLarge.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelLargeMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelLarge.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelLargeRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelLarge.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Medium
  Text labelMediumBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelMedium.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelMediumSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelMedium.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelMediumMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelMedium.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelMediumRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelMedium.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  //Label Small
  Text labelSmallBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelSmall.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelSmallSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelSmall.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelSmallMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelSmall.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelSmallRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelSmall.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Extra Small
  Text labelExtraSmallBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraSmall.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraSmallSemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraSmall.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraSmallMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraSmall.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraSmallRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelExtraSmall.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Tiny Small
  Text labelTinyBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelTiny.merge(const TextStyle(fontWeight: FontWeight.bold));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelTinySemiBold({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelTiny.merge(const TextStyle(fontWeight: FontWeight.w600));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelTinyMedium({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelTiny.merge(const TextStyle(fontWeight: FontWeight.w500));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelTinyRegular({TextStyle? style}) {
    final TextStyle defaultStyle =
        _labelTiny.merge(const TextStyle(fontWeight: FontWeight.normal));
    return Text(data!,
        style: (style ?? defaultStyle).merge(style ?? defaultStyle),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Helper functions
  TextSpan toTextSpan({List<TextSpan>? children}) {
    return TextSpan(
        text: data, style: style, children: children ??= []);
  }

  SelectableText toSelectableText() {
    return SelectableText(
      data!,
      style: style,
    );
  }
}
