import 'package:flutter/material.dart';

class CalculatorController {
  final solution = ValueNotifier("");
  final input = ValueNotifier("");

  void updateSolution(String value) {
    solution.value = value;
  }

  void updateInput(String value) {
    input.value = value;
  }

  void calculate(String operation) {
    switch (operation) {
      case 'C':
        break;
      case '+/-':
        break;
      case '%':
        break;
      case '÷':
        break;
      case '×':
        break;
      case '-':
        break;
      case '+':
        break;
      default:
    }
  }
}
