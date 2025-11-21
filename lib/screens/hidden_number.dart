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

  bool revealed1 = false;
  bool revealed2 = false;

  int? selectedBox;

  void generateNumber() {
    // chaneg the state of the number
    // “Something changed. Rebuild the UI so the new values show on the screen.”
    setState(() {
      number = random.nextInt(100);
      number2 = random.nextInt(100);
      revealed1 = false;
      revealed2 = false;
      selectedBox = null;
    });
  }

  // void revealNumber() {
  //   setState(() {
  //     isRevealed = true;
  //   });
  // }

  void chooseBox(int box) {
    setState(() {
      selectedBox = box;

      if (box == 1) {
        revealed1 = true;
      } else {
        revealed2 = true;
      }

      if (box == 1) {
        revealed2 = true;
      } else {
        revealed1 = true;
      }
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
                  onTap: () {
                    if (selectedBox == null) chooseBox(1);
                  },
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
                      revealed1 ? "$number" : "?",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: revealed1
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
                  onTap: () {
                    if (selectedBox == null) chooseBox(2);
                  },
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
                      revealed2 ? "$number2" : "?",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: revealed2
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
                // generateNumber2();
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
