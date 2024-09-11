import 'package:flutter/material.dart';
import 'dart:math' as math;

class NeuralNetworkIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint nodePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final Paint linePaint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01;

    // Define node positions
    final List<List<Offset>> layers = [
      [
        Offset(size.width * 0.2, size.height * 0.2),
        Offset(size.width * 0.2, size.height * 0.5),
        Offset(size.width * 0.2, size.height * 0.8),
      ],
      [
        Offset(size.width * 0.5, size.height * 0.35),
        Offset(size.width * 0.5, size.height * 0.65),
      ],
      [
        Offset(size.width * 0.8, size.height * 0.5),
      ],
    ];

    // Draw connections
    for (int i = 0; i < layers.length - 1; i++) {
      for (var startNode in layers[i]) {
        for (var endNode in layers[i + 1]) {
          canvas.drawLine(startNode, endNode, linePaint);
        }
      }
    }

    // Draw nodes
    for (var layer in layers) {
      for (var node in layer) {
        canvas.drawCircle(node, size.width * 0.05, nodePaint);
      }
    }

    // Add text
    final textPainter = TextPainter(
      text: TextSpan(
        text: 'NN',
        style: TextStyle(
          color: Colors.black,
          fontSize: size.height * 0.15,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.05, size.height * 0.05));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
