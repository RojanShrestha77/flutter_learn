import 'package:flutter/material.dart';
import 'dart:math';

class HiddenNumberBox extends StatefulWidget {
  const HiddenNumberBox({super.key});

  @override
  State<HiddenNumberBox> createState() => _HiddenNumberBoxState();
}

class _HiddenNumberBoxState extends State<HiddenNumberBox> {
  final Random random = Random();
  int number = 0;
  int number2 = 0;
  bool isRevealed = false;

  void generateNumber() {
    // chaneg the state of the number
    // “Something changed. Rebuild the UI so the new values show on the screen.”
    setState(() {
      number = random.nextInt(100);
      isRevealed = false;
    });
  }

  void generateNumber2() {
    // chaneg the state of the number
    // “Something changed. Rebuild the UI so the new values show on the screen.”
    setState(() {
      number2 = random.nextInt(100);
      isRevealed = false;
    });
  }

  void revealNumber() {
    setState(() {
      isRevealed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: revealNumber,
                  child: Container(
                    width: 150,
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue, width: 3),
                    ),
                    child: Text(
                      isRevealed ? "$number" : "?",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: isRevealed
                            ? Colors.black
                            : const Color.fromARGB(255, 190, 197, 203),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 200),

            Column(
              children: [
                GestureDetector(
                  onTap: revealNumber,
                  child: Container(
                    width: 150,
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue, width: 3),
                    ),
                    child: Text(
                      isRevealed ? "$number2" : "?",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: isRevealed
                            ? Colors.black
                            : const Color.fromARGB(255, 190, 197, 203),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                generateNumber2();
                generateNumber();
              },
              child: const Text("Generate New Number"),
            ),
          ],
        ),
      ),
    );
  }
}
