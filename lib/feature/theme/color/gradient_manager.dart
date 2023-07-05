import 'package:flutter/material.dart';

class GradientManager {
  static final GradientManager _instance = GradientManager._internal();
  factory GradientManager() => _instance;

  GradientManager._internal();

  LinearGradient orangeGradient = const LinearGradient(
    colors: [
      Color(0xFFFB9400),
      Color(0xFFFFAB38),
    ],
  );
  LinearGradient pinkGradient = const LinearGradient(
    colors: [
      Color(0xFFFF4D67),
      Color(0xFFFF8A9B),
    ],
  );

  LinearGradient blueGradient = const LinearGradient(
    colors: [
      Color(0xFF246BFD),
      Color(0xFF5089FF),
    ],
  );

  LinearGradient primaryGradient = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: [
      const Color(0xFF6CC000).withOpacity(1),
      const Color(0xFF6CC000).withOpacity(1),
      const Color(0xFF7AC619).withOpacity(0.6),
    ],
  );
}
