import 'package:flutter/material.dart';

class FlowchartIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02;

    // Draw flowchart shapes
    canvas.drawOval(Rect.fromLTWH(size.width * 0.3, 0, size.width * 0.4, size.height * 0.2), paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.3, size.height * 0.3, size.width * 0.4, size.height * 0.2), paint);
    Path diamondPath = Path()
      ..moveTo(size.width * 0.5, size.height * 0.6)
      ..lineTo(size.width * 0.7, size.height * 0.75)
      ..lineTo(size.width * 0.5, size.height * 0.9)
      ..lineTo(size.width * 0.3, size.height * 0.75)
      ..close();
    canvas.drawPath(diamondPath, paint);

    // Draw connection lines
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
                    Offset(size.width * 0.5, size.height * 0.3), paint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.5),
                    Offset(size.width * 0.5, size.height * 0.6), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
