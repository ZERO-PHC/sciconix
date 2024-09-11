import 'package:flutter/material.dart';
import 'dart:math' as math;

class CircuitIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint wirePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02;

    final Paint componentPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03;

    // Draw main circuit loop
    Path path = Path()
      ..moveTo(size.width * 0.1, size.height * 0.5)
      ..lineTo(size.width * 0.3, size.height * 0.5)
      ..lineTo(size.width * 0.3, size.height * 0.2)
      ..lineTo(size.width * 0.7, size.height * 0.2)
      ..lineTo(size.width * 0.7, size.height * 0.8)
      ..lineTo(size.width * 0.3, size.height * 0.8)
      ..lineTo(size.width * 0.3, size.height * 0.5)
      ..lineTo(size.width * 0.9, size.height * 0.5);

    canvas.drawPath(path, wirePaint);

    // Draw resistor
    canvas.drawLine(
      Offset(size.width * 0.3, size.height * 0.2),
      Offset(size.width * 0.7, size.height * 0.2),
      componentPaint,
    );
    for (int i = 0; i < 4; i++) {
      canvas.drawLine(
        Offset(size.width * (0.35 + i * 0.1), size.height * 0.15),
        Offset(size.width * (0.35 + i * 0.1), size.height * 0.25),
        componentPaint,
      );
    }

    // Draw capacitor
    canvas.drawLine(
      Offset(size.width * 0.3, size.height * 0.8),
      Offset(size.width * 0.45, size.height * 0.8),
      componentPaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.45, size.height * 0.7),
      Offset(size.width * 0.45, size.height * 0.9),
      componentPaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.55, size.height * 0.7),
      Offset(size.width * 0.55, size.height * 0.9),
      componentPaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.55, size.height * 0.8),
      Offset(size.width * 0.7, size.height * 0.8),
      componentPaint,
    );

    // Draw diode
    Path diodePath = Path()
      ..moveTo(size.width * 0.65, size.height * 0.45)
      ..lineTo(size.width * 0.75, size.height * 0.5)
      ..lineTo(size.width * 0.65, size.height * 0.55)
      ..close();
    canvas.drawPath(diodePath, componentPaint);
    canvas.drawLine(
      Offset(size.width * 0.75, size.height * 0.45),
      Offset(size.width * 0.75, size.height * 0.55),
      componentPaint,
    );

    // Draw battery
    canvas.drawLine(
      Offset(size.width * 0.1, size.height * 0.45),
      Offset(size.width * 0.1, size.height * 0.55),
      componentPaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.13, size.height * 0.47),
      Offset(size.width * 0.13, size.height * 0.53),
      componentPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
