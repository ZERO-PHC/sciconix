import 'package:flutter/material.dart';

class EnergyIconPainter extends CustomPainter {
  final Color color;

  EnergyIconPainter({this.color = Colors.yellow});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    // Starting point
    path.moveTo(size.width * 0.5, 0);

    // Left side of the thunder
    path.lineTo(size.width * 0.25, size.height * 0.5);
    path.lineTo(size.width * 0.4, size.height * 0.5);

    // Right side of the thunder
    path.lineTo(size.width * 0.3, size.height);
    path.lineTo(size.width * 0.75, size.height * 0.5);
    path.lineTo(size.width * 0.6, size.height * 0.5);

    // Close the path
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
