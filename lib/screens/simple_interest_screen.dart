import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final pController = TextEditingController();
  final tController = TextEditingController();
  final rController = TextEditingController();
  double si = 0;

  void calculateSI() {
    double p = double.tryParse(pController.text) ?? 0;
    double t = double.tryParse(tController.text) ?? 0;
    double r = double.tryParse(rController.text) ?? 0;

    setState(() {
      si = (p * t * r) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: pController,
              decoration: const InputDecoration(labelText: 'Principal'),
            ),
            TextField(
              controller: tController,
              decoration: const InputDecoration(labelText: 'Time'),
            ),
            TextField(
              controller: rController,
              decoration: const InputDecoration(labelText: 'Rate'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSI,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text('Simple Interest: $si', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
