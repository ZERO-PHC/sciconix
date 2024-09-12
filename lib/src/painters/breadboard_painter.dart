import 'package:flutter/material.dart';

class BreadboardIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint boardPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Paint holePaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.fill;

    final Paint linePaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01;

    // Draw the board
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(size.width * 0.05),
      ),
      boardPaint,
    );

    // Draw holes
    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 10; j++) {
        canvas.drawCircle(
          Offset(size.width * (0.1 + i * 0.2), size.height * (0.1 + j * 0.08)),
          size.width * 0.015,
          holePaint,
        );
      }
    }

    // Draw power lines
    canvas.drawLine(
      Offset(size.width * 0.05, size.height * 0.15),
      Offset(size.width * 0.95, size.height * 0.15),
      linePaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.05, size.height * 0.85),
      Offset(size.width * 0.95, size.height * 0.85),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
