import 'package:flutter/material.dart';

class DataStructureIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.indigo
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03;

    final Paint nodePaint = Paint()
      ..color = Colors.indigo
      ..style = PaintingStyle.fill;

    // Draw a tree-like structure
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.1), Offset(size.width * 0.5, size.height * 0.3), paint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.3), Offset(size.width * 0.3, size.height * 0.5), paint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.3), Offset(size.width * 0.7, size.height * 0.5), paint);
    canvas.drawLine(Offset(size.width * 0.3, size.height * 0.5), Offset(size.width * 0.2, size.height * 0.7), paint);
    canvas.drawLine(Offset(size.width * 0.3, size.height * 0.5), Offset(size.width * 0.4, size.height * 0.7), paint);
    canvas.drawLine(Offset(size.width * 0.7, size.height * 0.5), Offset(size.width * 0.6, size.height * 0.7), paint);
    canvas.drawLine(Offset(size.width * 0.7, size.height * 0.5), Offset(size.width * 0.8, size.height * 0.7), paint);

    // Draw nodes
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.1), size.width * 0.06, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.3), size.width * 0.06, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.5), size.width * 0.06, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 0.5), size.width * 0.06, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.2, size.height * 0.7), size.width * 0.06, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.4, size.height * 0.7), size.width * 0.06, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.6, size.height * 0.7), size.width * 0.06, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.8, size.height * 0.7), size.width * 0.06, nodePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
