import 'dart:math';
import 'package:calculator/controller/theme_controller.dart';
import 'package:calculator/utils/app_colors.dart';
import 'package:calculator/utils/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _textController = TextEditingController();
  String _result = "0";
  void _performOperation() {
    Parser p = Parser();
    Expression exp = p.parse(_textController.text.replaceAll("÷", "/").replaceAll("×", "*"));
    final result = exp.evaluate(EvaluationType.REAL, ContextModel());

    setState(() {
      _result = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.viewPaddingOf(context).top),
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: theme.brightness == Brightness.light
              ? null
              : const LinearGradient(
                  colors: [Color(0xff28425f), Color(0xff132a30)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: () {
                  if (theme.brightness == Brightness.light) {
                    ThemeNotifier.changeTheme(ThemeConfig.darkTheme);
                  } else {
                    ThemeNotifier.changeTheme(ThemeConfig.lightTheme);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  decoration:
                      BoxDecoration(color: theme.colorScheme.inversePrimary, borderRadius: BorderRadius.circular(32)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (theme.brightness == Brightness.light) const Icon(Icons.light_mode),
                      if (theme.brightness == Brightness.light) const SizedBox(width: 10),
                      const CircleAvatar(
                        backgroundColor: AppColors.grey9F,
                        radius: 10,
                      ),
                      if (theme.brightness == Brightness.dark) const SizedBox(width: 10),
                      if (theme.brightness == Brightness.dark) const Icon(Icons.dark_mode),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: TextFormField(
                textAlign: TextAlign.right,
                style: theme.textTheme.labelMedium,
                controller: _textController,
                readOnly: true,
                decoration: const InputDecoration.collapsed(hintText: "0"),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    textAlign: TextAlign.right,
                    _result.toString(),
                    style: theme.textTheme.labelLarge,
                    //   decoration: const InputDecoration.collapsed(hintText: "0"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(color: AppColors.grey9F),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "C",
                        onPressed: (value) {
                          setState(() {
                            _textController.text = '';
                            _result = "0";
                          });
                        },
                      ),
                      PadWidget(
                        label: "+/-",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "%",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "÷",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "7",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "8",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "9",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "×",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "4",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "5",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "6",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "-",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "1",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "2",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "3",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "+",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: ".",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      PadWidget(
                        label: "0",
                        onPressed: (value) {
                          setState(() {
                            _textController.text += value;
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _textController.text = _textController.text.substring(0, _textController.text.length - 1);
                          });
                        },
                        child: const SizedBox(
                          height: 40,
                          width: 40,
                          child: Icon(Icons.backspace_outlined),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          _performOperation();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.teal),
                          child: const Center(
                            child: Text(
                              "=",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PadWidget extends StatelessWidget {
  const PadWidget({super.key, required this.onPressed, required this.label});
  final ValueChanged<String> onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => onPressed(label),
      child: SizedBox(
        height: 80,
        width: 80,
        child: Center(
          child: Text(
            label,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}

bool isNumber(String input) {
  final regex = RegExp(r'^\d+\.?\d*$');
  return regex.hasMatch(input);
}
