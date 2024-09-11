import 'package:flutter/material.dart';

class RAMIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint chipPaint = Paint()
      ..color = Colors.green[700]!
      ..style = PaintingStyle.fill;

    final Paint gridPaint = Paint()
      ..color = Colors.green[900]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01;

    final Paint contactPaint = Paint()
      ..color = Colors.yellow[700]!
      ..style = PaintingStyle.fill;

    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: 'RAM',
        style: TextStyle(
          color: Colors.white,
          fontSize: size.height * 0.15,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    // Draw the main chip body
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height * 0.8),
        Radius.circular(size.width * 0.05),
      ),
      chipPaint,
    );

    // Draw the grid pattern
    for (int i = 1; i < 8; i++) {
      // Vertical lines
      canvas.drawLine(
        Offset(size.width * i / 8, 0),
        Offset(size.width * i / 8, size.height * 0.8),
        gridPaint,
      );
      // Horizontal lines
      canvas.drawLine(
        Offset(0, size.height * 0.8 * i / 8),
        Offset(size.width, size.height * 0.8 * i / 8),
        gridPaint,
      );
    }

    // Draw contact points
    for (int i = 0; i < 8; i++) {
      canvas.drawRect(
        Rect.fromLTWH(
          size.width * i / 8,
          size.height * 0.8,
          size.width / 16,
          size.height * 0.2,
        ),
        contactPaint,
      );
    }

    // Draw the "RAM" text
    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        (size.width - textPainter.width) / 2,
        size.height * 0.85 - textPainter.height / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
