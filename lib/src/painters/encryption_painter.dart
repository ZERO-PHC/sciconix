import 'package:flutter/material.dart';

class EncryptionIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05;

    // Draw lock body
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width * 0.2, size.height * 0.4, size.width * 0.6, size.height * 0.6),
        Radius.circular(size.width * 0.1),
      ),
      paint,
    );

    // Draw lock shackle
    Path shacklePath = Path()
      ..moveTo(size.width * 0.3, size.height * 0.4)
      ..lineTo(size.width * 0.3, size.height * 0.3)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.1, size.width * 0.7, size.height * 0.3)
      ..lineTo(size.width * 0.7, size.height * 0.4);
    canvas.drawPath(shacklePath, paint);

    // Draw key hole
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.65), size.width * 0.08, paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.46, size.height * 0.65, size.width * 0.08, size.height * 0.2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
