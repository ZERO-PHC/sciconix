import 'package:flutter/material.dart';

class BinaryTreeIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint nodePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final Paint linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = size.width * 0.02
      ..style = PaintingStyle.stroke;

    // Draw lines
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
                    Offset(size.width * 0.3, size.height * 0.5), linePaint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
                    Offset(size.width * 0.7, size.height * 0.5), linePaint);
    canvas.drawLine(Offset(size.width * 0.3, size.height * 0.5),
                    Offset(size.width * 0.2, size.height * 0.8), linePaint);
    canvas.drawLine(Offset(size.width * 0.3, size.height * 0.5),
                    Offset(size.width * 0.4, size.height * 0.8), linePaint);
    canvas.drawLine(Offset(size.width * 0.7, size.height * 0.5),
                    Offset(size.width * 0.6, size.height * 0.8), linePaint);
    canvas.drawLine(Offset(size.width * 0.7, size.height * 0.5),
                    Offset(size.width * 0.8, size.height * 0.8), linePaint);

    // Draw nodes
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.2), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.5), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 0.5), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.2, size.height * 0.8), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.4, size.height * 0.8), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.6, size.height * 0.8), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.8, size.height * 0.8), size.width * 0.08, nodePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
