import 'package:flutter/material.dart';

class ROMIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint chipPaint = Paint()
      ..color = Colors.grey[800]!
      ..style = PaintingStyle.fill;

    final Paint textPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final TextPainter textPainter = TextPainter(
      textDirection: TextDirection.ltr,
    );

    // Draw the chip
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width * 0.1, size.height * 0.2, size.width * 0.8,
            size.height * 0.6),
        Radius.circular(size.width * 0.05),
      ),
      chipPaint,
    );

    // Draw pins
    for (int i = 0; i < 8; i++) {
      canvas.drawRect(
        Rect.fromLTWH(size.width * (0.2 + i * 0.1), size.height * 0.8,
            size.width * 0.05, size.height * 0.1),
        chipPaint,
      );
    }

    // Draw "ROM" text
    textPainter.text = TextSpan(
      text: 'ROM',
      style: TextStyle(
        color: Colors.white,
        fontSize: size.height * 0.2,
        fontWeight: FontWeight.bold,
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.3, size.height * 0.4));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
