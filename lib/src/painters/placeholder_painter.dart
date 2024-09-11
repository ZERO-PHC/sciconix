// Placeholder painter for icons not yet implemented
import 'package:flutter/material.dart';

class PlaceholderIconPainter extends CustomPainter {
  final String text;

  PlaceholderIconPainter(this.text);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(color: Colors.white, fontSize: size.width * 0.2),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset((size.width - textPainter.width) / 2,
          (size.height - textPainter.height) / 2),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
