import 'package:calculator/controller/theme_controller.dart';
import 'package:calculator/views/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ThemeNotifier.themeData,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Calculator Demo',
          theme: value,
          home: const CalculatorPage(),
        );
      },
    );
  }
}
