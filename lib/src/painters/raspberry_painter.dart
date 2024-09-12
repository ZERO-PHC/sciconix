import 'package:flutter/material.dart';

class RaspberryPiIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint boardPaint = Paint()
      ..color = Color(0xFF00A86B) // Raspberry Pi green
      ..style = PaintingStyle.fill;

    final Paint componentPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.fill;

    final Paint portPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Draw the board
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(size.width * 0.1),
      ),
      boardPaint,
    );

    // Draw the CPU (larger rectangle in the center)
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.3, size.height * 0.3, size.width * 0.4,
          size.height * 0.4),
      componentPaint,
    );

    // Draw GPIO pins
    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 10; j++) {
        canvas.drawCircle(
          Offset(size.width * (0.1 + i * 0.1), size.height * (0.1 + j * 0.08)),
          size.width * 0.02,
          portPaint,
        );
      }
    }

    // Draw USB ports
    for (int i = 0; i < 2; i++) {
      canvas.drawRect(
        Rect.fromLTWH(size.width * (0.7 + i * 0.15), size.height * 0.8,
            size.width * 0.1, size.height * 0.15),
        portPaint,
      );
    }

    // Draw Ethernet port
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.7, size.height * 0.1, size.width * 0.25,
          size.height * 0.2),
      portPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
