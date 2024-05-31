import 'package:calculator/utils/theme_config.dart';
import 'package:flutter/material.dart';

class ThemeNotifier {
  static ValueNotifier<ThemeData> themeData = ValueNotifier(ThemeConfig.lightTheme);

  static void changeTheme(ThemeData data) {
    themeData.value = data;
  }
}
