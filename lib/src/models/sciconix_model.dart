import 'package:flutter/material.dart';

/// Represents a Sciconix icon with its associated metadata and painter.
class SciconixModel {
  /// Unique identifier for the icon.
  final String id;

  /// Short code representation of the icon.
  final String code;

  /// The custom painter used to draw the icon.
  final CustomPainter painter;

  /// A brief description of what the icon represents.
  final String description;

  /// The category to which this icon belongs.
  final String category;

  /// Tags associated with this icon for easier searching.
  final List<String> tags;

  /// Creates a new [SciconixModel].
  ///
  /// [id] and [code] must not be null or empty.
  /// [painter] must not be null.
  SciconixModel({
    required this.id,
    required this.code,
    required this.painter,
    this.description = '',
    this.category = 'Uncategorized',
    this.tags = const [],
  })  : assert(id.isNotEmpty),
        assert(code.isNotEmpty);

  /// Creates a copy of this [SciconixModel] but with the given fields replaced with the new values.
  SciconixModel copyWith({
    String? id,
    String? code,
    CustomPainter? painter,
    String? description,
    String? category,
    List<String>? tags,
  }) {
    return SciconixModel(
      id: id ?? this.id,
      code: code ?? this.code,
      painter: painter ?? this.painter,
      description: description ?? this.description,
      category: category ?? this.category,
      tags: tags ?? this.tags,
    );
  }

  /// Returns a widget that displays this icon.
  ///
  /// [size] determines the width and height of the icon.
  /// If [size] is null, the icon will try to fill its parent container.
  Widget toWidget({Size? size}) {
    return CustomPaint(
      painter: painter,
      size: size!,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SciconixModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          code == other.code;

  @override
  int get hashCode => id.hashCode ^ code.hashCode;

  @override
  String toString() => 'SciconixModel(id: $id, code: $code)';
}
