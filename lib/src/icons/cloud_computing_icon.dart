import 'package:flutter/material.dart';

class CloudComputingIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.lightBlue
      ..style = PaintingStyle.fill;

    // Draw cloud shape
    Path path = Path()
      ..moveTo(size.width * 0.2, size.height * 0.5)
      ..quadraticBezierTo(size.width * 0.1, size.height * 0.4, size.width * 0.2, size.height * 0.3)
      ..quadraticBezierTo(size.width * 0.2, size.height * 0.1, size.width * 0.4, size.height * 0.2)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.05, size.width * 0.7, size.height * 0.2)
      ..quadraticBezierTo(size.width * 0.9, size.height * 0.1, size.width * 0.8, size.height * 0.4)
      ..quadraticBezierTo(size.width * 0.9, size.height * 0.5, size.width * 0.8, size.height * 0.6)
      ..quadraticBezierTo(size.width * 0.9, size.height * 0.7, size.width * 0.7, size.height * 0.7)
      ..lineTo(size.width * 0.3, size.height * 0.7)
      ..quadraticBezierTo(size.width * 0.1, size.height * 0.7, size.width * 0.2, size.height * 0.5);

    canvas.drawPath(path, paint);

    // Draw computer symbol
    paint.color = Colors.white;
    canvas.drawRect(Rect.fromLTWH(size.width * 0.4, size.height * 0.4, size.width * 0.2, size.height * 0.15), paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.45, size.height * 0.55, size.width * 0.1, size.height * 0.05), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
