import 'package:flutter/material.dart';


final zeroEatTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: const Color(0xFF71A170),   // 초록
    secondary: const Color(0xFFF8EED7), // 주황 포인트
    surface: const Color(0xFFF8ECD6),// 크림색 배경
  ),
  scaffoldBackgroundColor: const Color(0xFFFDF6EC),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)),
    bodyMedium: TextStyle(fontSize: 14, color: Color(0xFF2F2F2F)),
  ),
);