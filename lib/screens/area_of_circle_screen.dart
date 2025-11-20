import 'package:flutter/material.dart';
import 'dart:math';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  final TextEditingController radiusController = TextEditingController(
    text: "5",
  );

  final _formKey = GlobalKey<FormState>();

  double result = 0;

  void calculateArea(double r) {
    setState(() {
      result = pi * r * r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: radiusController,
                decoration: InputDecoration(
                  labelText: "Enter radius",
                  hintText: "e.g. 5",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter radius";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Calculate Area", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      calculateArea(double.parse(radiusController.text));
                    }
                  },
                ),
              ),
              SizedBox(height: 8),
              Text("Area = $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
