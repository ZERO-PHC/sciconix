import 'package:flutter/material.dart';

class AlgorithmIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03;

    // Draw flowchart-like structure
    canvas.drawRect(Rect.fromLTWH(size.width * 0.2, size.height * 0.1, size.width * 0.6, size.height * 0.2), paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.2, size.height * 0.4, size.width * 0.6, size.height * 0.2), paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.2, size.height * 0.7, size.width * 0.6, size.height * 0.2), paint);

    // Draw connecting lines
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.3), Offset(size.width * 0.5, size.height * 0.4), paint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.6), Offset(size.width * 0.5, size.height * 0.7), paint);

    // Draw arrow
    Path arrowPath = Path()
      ..moveTo(size.width * 0.4, size.height * 0.65)
      ..lineTo(size.width * 0.5, size.height * 0.7)
      ..lineTo(size.width * 0.6, size.height * 0.65);
    canvas.drawPath(arrowPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
