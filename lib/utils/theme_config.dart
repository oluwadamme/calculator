import 'package:calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xffffffff),
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        inversePrimary: AppColors.greyF0,
      ),
      useMaterial3: false,
      textTheme: const TextTheme(
        labelMedium: TextStyle(fontSize: 24, color: AppColors.grey9F),
        labelLarge: TextStyle(fontSize: 32, color: AppColors.blue02, fontWeight: FontWeight.w400),
        bodyLarge: TextStyle(fontSize: 32, color: AppColors.blue02, fontWeight: FontWeight.w400),
      ),
      iconTheme: const IconThemeData(color: AppColors.blue02));
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      inversePrimary: AppColors.grey26,
    ),
    useMaterial3: false,
    iconTheme: const IconThemeData(color: AppColors.white),
    textTheme: const TextTheme(
      labelMedium: TextStyle(fontSize: 24, color: AppColors.grey9F),
      labelLarge: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.w500),
    ),
  );
}
