import 'package:flutter/material.dart';

class AppColors {
  static const Color teamAColorOne = Color(0xFFe94560);
  static const Color teamAColorTwo = Color(0xFFf4567c);

  static const Color teamBColorOne = Color(0xFF4ecca3);
  static const Color backgroundColorOne = Color(0xFF1a1a2e);
  static const Color backgroundColorTwo = Color(0xFF16213e);
  static const Color backgroundColorThree = Color(0xFF0f3460);

  static final Color white = Colors.white;

  static LinearGradient get backgroundGradient => LinearGradient(
    colors: [backgroundColorOne, backgroundColorTwo, backgroundColorThree],
  );
}
