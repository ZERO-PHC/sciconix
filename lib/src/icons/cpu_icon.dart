import 'package:flutter/material.dart';

class CPUIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey[800]!
      ..style = PaintingStyle.fill;

    // Draw CPU body
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width * 0.1, size.height * 0.1, size.width * 0.8, size.height * 0.8),
        Radius.circular(size.width * 0.05),
      ),
      paint,
    );

    // Draw pins
    paint.color = Colors.grey[600]!;
    for (int i = 0; i < 6; i++) {
      canvas.drawRect(Rect.fromLTWH(size.width * (0.2 + i * 0.12), 0, size.width * 0.06, size.height * 0.1), paint);
      canvas.drawRect(Rect.fromLTWH(size.width * (0.2 + i * 0.12), size.height * 0.9, size.width * 0.06, size.height * 0.1), paint);
      canvas.drawRect(Rect.fromLTWH(0, size.height * (0.2 + i * 0.12), size.width * 0.1, size.height * 0.06), paint);
      canvas.drawRect(Rect.fromLTWH(size.width * 0.9, size.height * (0.2 + i * 0.12), size.width * 0.1, size.height * 0.06), paint);
    }

    // Draw CPU details
    paint.color = Colors.grey[400]!;
    canvas.drawRect(Rect.fromLTWH(size.width * 0.3, size.height * 0.3, size.width * 0.4, size.height * 0.4), paint);
    paint.color = Colors.grey[600]!;
    canvas.drawLine(Offset(size.width * 0.35, size.height * 0.4), Offset(size.width * 0.65, size.height * 0.4), paint);
    canvas.drawLine(Offset(size.width * 0.35, size.height * 0.5), Offset(size.width * 0.65, size.height * 0.5), paint);
    canvas.drawLine(Offset(size.width * 0.35, size.height * 0.6), Offset(size.width * 0.65, size.height * 0.6), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
