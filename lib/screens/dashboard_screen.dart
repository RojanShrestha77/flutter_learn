import 'package:flutter/material.dart';
import 'arithmetic_screen.dart';
import 'simple_interest_screen.dart';
import 'area_of_circle_screen.dart';
import 'armstrong_screen.dart';
import 'palindrome_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArithmeticScreen(),
                  ),
                );
              },
              child: const Text('Arithmetic Operations'),
            ),
            //Navigator Push
            // navigator PoP
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleInterestScreen(),
                  ),
                );
              },
              child: const Text('Simple Interest'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AreaOfCircleScreen(),
                  ),
                );
              },
              child: const Text('Area of Circle'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArmstrongScreen(),
                  ),
                );
              },
              child: const Text('Armstrong Number'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PalindromeScreen(),
                  ),
                );
              },
              child: const Text('Palindrome Check'),
            ),
          ],
        ),
      ),
    );
  }
}
