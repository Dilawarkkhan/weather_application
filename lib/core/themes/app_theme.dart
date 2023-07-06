import 'package:flutter/material.dart';

class AppThemes {
  static const Gradient appGradient = LinearGradient(
    colors: [
      Color(0xFF81D4DF),
      Color(0xFF62B6CB),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

class GradientColor {
  static const Gradient weatherColor = LinearGradient(
    colors: [
      Color(0xFF4FC3F7), // Light Blue
      Color(0xFF1976D2), // Dark Blue
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
