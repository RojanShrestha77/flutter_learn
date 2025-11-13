import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double result = 0;

  void calculate(String operation) {
    double n1 = double.tryParse(num1Controller.text) ?? 0;
    double n2 = double.tryParse(num2Controller.text) ?? 0;

    setState(() {
      if (operation == '+') result = n1 + n2;
      if (operation == '-') result = n1 - n2;
      if (operation == '*') result = n1 * n2;
      if (operation == '/') result = n2 != 0 ? n1 / n2 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Arithmetic Operations')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
              ),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => calculate('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('*'),
                  child: const Text('*'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('/'),
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text('Result: $result', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
