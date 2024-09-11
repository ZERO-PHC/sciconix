import 'package:flutter/material.dart';
import 'dart:math' as math;

class MathFunctionIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint axisPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02;

    final Paint functionPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03;

    final TextPainter textPainter = TextPainter(
      textDirection: TextDirection.ltr,
    );

    // Draw x and y axes
    canvas.drawLine(Offset(0, size.height / 2),
        Offset(size.width, size.height / 2), axisPaint);
    canvas.drawLine(Offset(size.width / 2, 0),
        Offset(size.width / 2, size.height), axisPaint);

    // Draw sine function
    Path path = Path();
    for (double x = 0; x < size.width; x++) {
      double y = size.height / 2 -
          math.sin((x / size.width) * 4 * math.pi) * size.height / 4;
      if (x == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    canvas.drawPath(path, functionPaint);

    // Draw f(x) text
    textPainter.text = TextSpan(
      text: 'f(x)',
      style: TextStyle(
        color: Colors.black,
        fontSize: size.height * 0.15,
        fontWeight: FontWeight.bold,
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.1, size.height * 0.1));

    // Draw = sign
    textPainter.text = TextSpan(
      text: '=',
      style: TextStyle(
        color: Colors.black,
        fontSize: size.height * 0.15,
        fontWeight: FontWeight.bold,
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.3, size.height * 0.1));

    // Draw sin(x) text
    textPainter.text = TextSpan(
      text: 'sin(x)',
      style: TextStyle(
        color: Colors.blue,
        fontSize: size.height * 0.15,
        fontWeight: FontWeight.bold,
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.45, size.height * 0.1));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
