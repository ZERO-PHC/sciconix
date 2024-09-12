import 'package:flutter/material.dart';

class ZigIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint zigPaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.08
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final Path zigPath = Path()
      ..moveTo(size.width * 0.2, size.height * 0.2)
      ..lineTo(size.width * 0.8, size.height * 0.2)
      ..lineTo(size.width * 0.2, size.height * 0.8)
      ..lineTo(size.width * 0.8, size.height * 0.8);

    canvas.drawPath(zigPath, zigPaint);

    // Draw "ZIG" text
    final textPainter = TextPainter(
      text: TextSpan(
        text: 'ZIG',
        style: TextStyle(
          color: Colors.black,
          fontSize: size.height * 0.2,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.25, size.height * 0.4));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
