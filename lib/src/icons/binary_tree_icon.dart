// In src/icons/binary_tree_icon.dart
import 'package:sciconix/src/painters/binary_tree_painter.dart';

import '../models/sciconix_model.dart';

final binaryTreeIcon = SciconixModel(
  id: 'binary_tree',
  code: 'BT',
  painter: BinaryTreeIconPainter(),
  description: 'Depicts a binary tree data structure',
  category: 'Data Structures',
  tags: ['binary tree', 'data structure', 'tree'],
);
