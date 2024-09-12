import 'package:flutter/material.dart';
import 'package:sciconix/sciconix.dart';
import 'package:sciconix/src/painters/binary_tree_painter.dart';
import 'package:sciconix/src/painters/breadboard_painter.dart';
import 'package:sciconix/src/painters/data_structure_painter.dart';
import 'package:sciconix/src/painters/database_painter.dart';
import 'package:sciconix/src/painters/encryption_painter.dart';
import 'package:sciconix/src/painters/energy_painter.dart';
import 'package:sciconix/src/painters/flowchart_painter.dart';
import 'package:sciconix/src/painters/zig_painter.dart';

List<SciconixModel> icons = [
  SciconixModel(
    id: 'binary_tree',
    code: 'BT',
    painter: BinaryTreeIconPainter(),
    description: 'Depicts a binary tree data structure',
    category: 'Data Structures',
    tags: ['binary tree', 'data structure', 'tree'],
  ),
  SciconixModel(
    id: 'breadboard',
    code: 'BB',
    painter: BreadboardIconPainter(),
    description: 'Illustrates a breadboard for electronic prototyping',
    category: 'Electronics',
    tags: ['breadboard', 'electronics', 'prototyping'],
  ),
  SciconixModel(
    id: 'database',
    code: 'DB',
    painter: DatabaseIconPainter(),
    description: 'Represents a database system',
    category: 'Data Management',
    tags: ['database', 'storage', 'data'],
  ),
  SciconixModel(
    id: 'data_structure',
    code: 'DS',
    painter: DataStructureIconPainter(),
    description: 'Depicts a general data structure',
    category: 'Data Structures',
    tags: ['data structure', 'organization', 'algorithm'],
  ),
  SciconixModel(
    id: 'encryption',
    code: 'ENC',
    painter: EncryptionIconPainter(),
    description: 'Represents data encryption',
    category: 'Security',
    tags: ['encryption', 'security', 'privacy'],
  ),
  SciconixModel(
    id: 'energy',
    code: 'NRG',
    painter: EnergyIconPainter(),
    description: 'Illustrates energy or power',
    category: 'Physics',
    tags: ['energy', 'power', 'electricity'],
  ),
  SciconixModel(
    id: 'flowchart',
    code: 'FC',
    painter: FlowchartIconPainter(),
    description: 'Shows a flowchart or process diagram',
    category: 'Diagrams',
    tags: ['flowchart', 'process', 'diagram'],
  ),
  SciconixModel(
    id: 'zig',
    code: 'ZIG',
    painter: ZigIconPainter(),
    description: 'Represents the Zig programming language',
    category: 'Programming Languages',
    tags: ['zig', 'programming', 'language'],
  ),
];
