#!/bin/bash

# Function to write content to a file
write_icon_content() {
    local file=$1
    local content=$2

    echo "$content" > "$file"
    echo "Content written to $file"
}

# Binary Tree Icon
binary_tree_content=$(cat << 'EOF'
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
EOF
)

# Database Icon
database_content=$(cat << 'EOF'
import 'package:flutter/material.dart';

class DatabaseIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    // Draw cylinder
    canvas.drawOval(Rect.fromLTWH(0, 0, size.width, size.height * 0.2), paint);
    canvas.drawRect(Rect.fromLTWH(0, size.height * 0.1, size.width, size.height * 0.8), paint);
    canvas.drawOval(Rect.fromLTWH(0, size.height * 0.7, size.width, size.height * 0.3), paint);

    // Draw lines
    final Paint linePaint = Paint()
      ..color = Colors.orange.shade800
      ..strokeWidth = size.width * 0.02
      ..style = PaintingStyle.stroke;

    canvas.drawLine(Offset(0, size.height * 0.1), Offset(size.width, size.height * 0.1), linePaint);
    canvas.drawLine(Offset(0, size.height * 0.85), Offset(size.width, size.height * 0.85), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
EOF
)

# Flowchart Icon
flowchart_content=$(cat << 'EOF'
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
EOF
)

# CPU Icon
cpu_content=$(cat << 'EOF'
import 'package:flutter/material.dart';

class CPUIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey[800]!
      ..style = PaintingStyle.fill;

    // Draw CPU body
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width * 0.1, size.height * 0.1, size.width * 0.8, size.height * 0.8),
        Radius.circular(size.width * 0.05),
      ),
      paint,
    );

    // Draw pins
    paint.color = Colors.grey[600]!;
    for (int i = 0; i < 6; i++) {
      canvas.drawRect(Rect.fromLTWH(size.width * (0.2 + i * 0.12), 0, size.width * 0.06, size.height * 0.1), paint);
      canvas.drawRect(Rect.fromLTWH(size.width * (0.2 + i * 0.12), size.height * 0.9, size.width * 0.06, size.height * 0.1), paint);
      canvas.drawRect(Rect.fromLTWH(0, size.height * (0.2 + i * 0.12), size.width * 0.1, size.height * 0.06), paint);
      canvas.drawRect(Rect.fromLTWH(size.width * 0.9, size.height * (0.2 + i * 0.12), size.width * 0.1, size.height * 0.06), paint);
    }

    // Draw CPU details
    paint.color = Colors.grey[400]!;
    canvas.drawRect(Rect.fromLTWH(size.width * 0.3, size.height * 0.3, size.width * 0.4, size.height * 0.4), paint);
    paint.color = Colors.grey[600]!;
    canvas.drawLine(Offset(size.width * 0.35, size.height * 0.4), Offset(size.width * 0.65, size.height * 0.4), paint);
    canvas.drawLine(Offset(size.width * 0.35, size.height * 0.5), Offset(size.width * 0.65, size.height * 0.5), paint);
    canvas.drawLine(Offset(size.width * 0.35, size.height * 0.6), Offset(size.width * 0.65, size.height * 0.6), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
EOF
)

# Network Icon
network_content=$(cat << 'EOF'
import 'package:flutter/material.dart';

class NetworkIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint nodePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final Paint linePaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = size.width * 0.02
      ..style = PaintingStyle.stroke;

    // Draw connections
    canvas.drawLine(Offset(size.width * 0.2, size.height * 0.2),
                    Offset(size.width * 0.8, size.height * 0.2), linePaint);
    canvas.drawLine(Offset(size.width * 0.2, size.height * 0.2),
                    Offset(size.width * 0.5, size.height * 0.8), linePaint);
    canvas.drawLine(Offset(size.width * 0.8, size.height * 0.2),
                    Offset(size.width * 0.5, size.height * 0.8), linePaint);
    canvas.drawLine(Offset(size.width * 0.2, size.height * 0.2),
                    Offset(size.width * 0.8, size.height * 0.8), linePaint);
    canvas.drawLine(Offset(size.width * 0.8, size.height * 0.2),
                    Offset(size.width * 0.2, size.height * 0.8), linePaint);

    // Draw nodes
    canvas.drawCircle(Offset(size.width * 0.2, size.height * 0.2), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.8, size.height * 0.2), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.8), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.2, size.height * 0.8), size.width * 0.08, nodePaint);
    canvas.drawCircle(Offset(size.width * 0.8, size.height * 0.8), size.width * 0.08, nodePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
EOF
)

# Cloud Computing Icon
cloud_computing_content=$(cat << 'EOF'
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
EOF
)

#!/bin/bash

# ... (previous content remains the same)

# Encryption Icon (continued)
encryption_content=$(cat << 'EOF'
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
EOF
)

# Algorithm Icon
algorithm_content=$(cat << 'EOF'
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
EOF
)

# Data Structure Icon
data_structure_content=$(cat << 'EOF'
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
EOF
)

# Write content for each icon
write_icon_content "binary_tree_icon.dart" "$binary_tree_content"
write_icon_content "database_icon.dart" "$database_content"
write_icon_content "flowchart_icon.dart" "$flowchart_content"
write_icon_content "cpu_icon.dart" "$cpu_content"
write_icon_content "network_icon.dart" "$network_content"
write_icon_content "cloud_computing_icon.dart" "$cloud_computing_content"
write_icon_content "encryption_icon.dart" "$encryption_content"
write_icon_content "algorithm_icon.dart" "$algorithm_content"
write_icon_content "data_structure_icon.dart" "$data_structure_content"

echo "All icon files have been updated with their specific content."
