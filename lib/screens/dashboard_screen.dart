import 'package:flutter/material.dart';
import 'package:my_flutter_learn/screens/arthimetic_two.dart';
import 'package:my_flutter_learn/screens/column_screen.dart';
import 'package:my_flutter_learn/screens/column_view.dart';
import 'package:my_flutter_learn/screens/hidden_number.dart';
import 'arithmetic_screen.dart';
import 'simple_interest_screen.dart';
import 'area_of_circle_screen.dart';
import 'armstrong_screen.dart';
import 'palindrome_screen.dart';
import 'layout_screen.dart';

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
                    builder: (context) => const AreaCircleScreen(),
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
                    builder: (context) => const FlutterLayout(),
                  ),
                );
              },
              child: const Text('Flutter Layout'),
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
              child: const Text('Palindrome checl'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ColumnScreen()),
                );
              },
              child: const Text(' Column'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ColumnView()),
                );
              },
              child: const Text('View'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArthimeticTwo(),
                  ),
                );
              },
              child: const Text('Arthimeic Two'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HiddenNumberBox(),
                  ),
                );
              },
              child: const Text('Number Generator'),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const ColumnScreen()),
            //     );
            //   },
            //   child: const Text('column screen'),
            // ),
          ],
        ),
      ),
    );
  }
}
