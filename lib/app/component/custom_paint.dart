import 'package:flutter/material.dart';

class CustomPaintTeste extends CustomPainter {
  final List<int> list;
  CustomPaintTeste(this.list);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintR = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5;

    const double posX = 20.0;

    int spaceCount = 0;

    final widthBar = (size.width - (list.length + 1) * 10) / list.length;

    for (final heightBar in list) {
      final centerXBar = size.height - heightBar / 2;
      final TextSpan textSpan = TextSpan(
          text: heightBar.toString(),
          style: const TextStyle(color: Colors.black, fontSize: 8));

      final TextPainter tp =
          TextPainter(text: textSpan, textDirection: TextDirection.ltr);

      tp.layout();

      final centerR =
          Offset((posX + spaceCount * widthBar) + spaceCount * 10, centerXBar);
      final rect = Rect.fromCenter(
          center: centerR, width: widthBar, height: heightBar.toDouble());
      canvas.drawRect(rect, paintR);

      tp.paint(
          canvas,
          Offset((posX + spaceCount * widthBar + spaceCount * 10) - 8,
              (centerXBar - heightBar / 2) - 10));

      spaceCount++;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
