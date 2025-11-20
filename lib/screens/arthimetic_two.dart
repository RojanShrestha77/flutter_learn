import 'package:flutter/material.dart';
import 'dart:math';

class ArthimeticTwo extends StatefulWidget {
  const ArthimeticTwo({super.key});

  @override
  State<ArthimeticTwo> createState() => _ArthimeticTwoState();
}

class _ArthimeticTwoState extends State<ArthimeticTwo> {
  final Random random = Random();
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Arthimetic Two')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter first number',
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter second number',
                ),
              ),
              ListTile(
                title: const Text(" Add"),
                leading: Radio<String>(value: "Add"),
              ),
              ListTile(
                title: const Text(" Subtract"),
                leading: Radio<String>(value: "Sub"),
              ),
              ListTile(
                title: const Text(" Multipy"),
                leading: Radio<String>(value: "Mul"),
              ),
              ListTile(
                title: const Text(" Divide"),
                leading: Radio<String>(value: "Div"),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),

              SizedBox(height: 50),

              Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                child: Text(
                  "$number",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = random.nextInt(100);
                  });
                },
                child: Text("Generated Number"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
