import 'package:flutter/material.dart';

class ZeroEatColors {
  static const primary = Color(0xFF00A86B);
  static const secondary = Color(0xFFFFA040);
  static const background = Color(0xFFF9FAFB);
  static const darkBackground = Color(0xFF111827);
  static const textPrimary = Color(0xFF1F2937);
  static const textSecondary = Color(0xFF6B7280);
}

class ZeroEatTextStyles {
  static TextTheme get textTheme => const TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.25,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      );
}
