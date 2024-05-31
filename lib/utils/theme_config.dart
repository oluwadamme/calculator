import 'package:calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xffffffff),
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        inversePrimary: AppColors.grey26,
      ),
      textTheme: const TextTheme(
        labelMedium: TextStyle(fontSize: 16, color: AppColors.grey9F),
        labelLarge: TextStyle(fontSize: 24, color: AppColors.blue02, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 16, color: AppColors.blue02, fontWeight: FontWeight.bold),
      ),
      iconTheme: const IconThemeData(color: AppColors.blue02));
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      inversePrimary: AppColors.greyF0,
    ),
    iconTheme: const IconThemeData(color: AppColors.white),
    textTheme: const TextTheme(
      labelMedium: TextStyle(fontSize: 16, color: AppColors.grey9F),
      labelLarge: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
