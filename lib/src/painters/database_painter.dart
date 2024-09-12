import 'package:flutter/material.dart';

class DatabaseIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    // Draw cylinder
    canvas.drawOval(Rect.fromLTWH(0, 0, size.width, size.height * 0.2), paint);
    canvas.drawRect(Rect.fromLTWH(0, size.height * 0.1, size.width, size.height * 0.8), paint);
    canvas.drawOval(Rect.fromLTWH(0, size.height * 0.7, size.width, size.height * 0.3), paint);

    // Draw lines
    final Paint linePaint = Paint()
      ..color = Colors.orange.shade800
      ..strokeWidth = size.width * 0.02
      ..style = PaintingStyle.stroke;

    canvas.drawLine(Offset(0, size.height * 0.1), Offset(size.width, size.height * 0.1), linePaint);
    canvas.drawLine(Offset(0, size.height * 0.85), Offset(size.width, size.height * 0.85), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
