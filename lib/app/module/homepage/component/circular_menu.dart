import 'dart:math' as math;

import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const rect = Rect.fromLTRB(200, 0, 500, 250);
    const startAngle = math.pi / 2;
    const sweepAngle = math.pi;
    const useCenter = false;
    final paint = Paint()
      ..color = BrechoColors.monoBlack
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
