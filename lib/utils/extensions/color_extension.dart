import 'package:flutter/material.dart';

extension ColorExtension on Color {
/// value should be double from 0.0 to 1.0
  Color alphaPercent (double value) => withAlpha(100 * ((value * 255) / 100).round());
}