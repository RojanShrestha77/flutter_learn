import 'package:flutter/material.dart';
import 'dart:math';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final radiusController = TextEditingController();
  double area = 0;

  void calculateArea() {
    double r = double.tryParse(radiusController.text) ?? 0;
    setState(() {
      area = pi * r * r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Area of Circle')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              decoration: const InputDecoration(labelText: 'Radius'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateArea,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text('Area: $area', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
