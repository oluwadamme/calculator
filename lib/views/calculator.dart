import 'package:calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.viewPaddingOf(context).top),
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color(0xff28425f), Color(0xff132a30)])),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration:
                  BoxDecoration(color: theme.colorScheme.inversePrimary, borderRadius: BorderRadius.circular(32)),
              child: const Row(
                children: [
                  Icon(Icons.light),
                  CircleAvatar(
                    backgroundColor: AppColors.grey9F,
                    radius: 5,
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              enabled: false,
              style: theme.textTheme.labelMedium,
              decoration: const InputDecoration.collapsed(hintText: "0"),
            ),
            TextFormField(
              enabled: false,
              style: theme.textTheme.labelLarge,
              decoration: const InputDecoration.collapsed(hintText: "0"),
            ),
            const SizedBox(height: 20),
            const Divider(color: AppColors.grey9F),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "C",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "+/-",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "%",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "÷",
                        onPressed: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "7",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "8",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "9",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "×",
                        onPressed: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "4",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "5",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "6",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "-",
                        onPressed: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "1",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "2",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "3",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "+",
                        onPressed: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: "1",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "2",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "3",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "+",
                        onPressed: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PadWidget(
                        label: ".",
                        onPressed: (value) {},
                      ),
                      PadWidget(
                        label: "0",
                        onPressed: (value) {},
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const SizedBox(
                          height: 40,
                          width: 40,
                          child: Icon(Icons.backspace_outlined),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
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
        height: 40,
        width: 40,
        child: Text(
          label,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
