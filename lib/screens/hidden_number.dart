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
  int correct = 0;
  int incorrect = 0;
  int round = 0;
  final int maxRounds = 10;
  String gameOverMessage = "";

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
    if (round >= maxRounds) return;
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

      int choosen = selectedBox == 1 ? number : number2;
      int other = selectedBox == 1 ? number2 : number;

      if (choosen > other) {
        correct += 1;
      } else {
        incorrect += 1;
      }

      round += 1;

      if (round == maxRounds) {
        if (correct > incorrect) {
          gameOverMessage = "You Won🎉";
        } else {
          gameOverMessage = "You lost😢";
        }
      }

      if (round == maxRounds) {
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            correct = 0;
            incorrect = 0;
            round = 0;
            generateNumber();
          });
        });
      }
    });
  }

  void resetAll() {
    setState(() {
      correct = 0;
      incorrect = 0;
      round = 0;
      generateNumber();
    });
  }

  // // compare numbers and show result
  // String getResultMessage() {
  //   if (selectedBox == null) return "";

  //   int choosen = selectedBox == 1 ? number : number2;
  //   int other = selectedBox == 1 ? number2 : number;

  //   if (choosen > other) {
  //     correct += 1;
  //   } else {
  //     incorrect += 1;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Text(
                "Number Game",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
                            color: const Color.fromARGB(255, 22, 179, 156),
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
                ],
              ),

              SizedBox(height: 200),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue, width: 3),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Score",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),

                        Text(
                          "Correct:$correct",
                          style: TextStyle(fontSize: 28),
                        ),
                        Text(
                          "Incorrect:$incorrect",
                          style: TextStyle(fontSize: 28),
                        ),

                        Text(
                          "Round:$round / $maxRounds",
                          style: TextStyle(fontSize: 25),
                        ),

                        Text(
                          gameOverMessage,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  resetAll();
                },
                child: const Text("Reset"),
              ),

              ElevatedButton(
                onPressed: () {
                  // generateNumber2();
                  generateNumber();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text(
                  "Generate New Number",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
