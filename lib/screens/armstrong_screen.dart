import 'package:flutter/material.dart';
import 'dart:math';

class ArmstrongScreen extends StatefulWidget {
  const ArmstrongScreen({super.key});

  @override
  State<ArmstrongScreen> createState() => _ArmstrongScreenState();
}

class _ArmstrongScreenState extends State<ArmstrongScreen> {
  final numberController = TextEditingController();
  String result = '';

  void checkArmstrong() {
    int num = int.tryParse(numberController.text) ?? 0;
    int temp = num;
    int sum = 0;
    int digits = numberController.text.length;

    while (temp > 0) {
      int digit = temp % 10;
      sum += pow(digit, digits).toInt();
      temp ~/= 10;
    }

    setState(() {
      result = (sum == num)
          ? '$num is an Armstrong number'
          : '$num is not an Armstrong number';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Armstrong Number')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              decoration: const InputDecoration(labelText: 'Enter a number'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkArmstrong,
              child: const Text('Check'),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
