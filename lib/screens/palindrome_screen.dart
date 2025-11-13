import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  final textController = TextEditingController();
  String result = '';

  void checkPalindrome() {
    String input = textController.text.toLowerCase();
    String reversed = input.split('').reversed.join('');
    setState(() {
      result = (input == reversed)
          ? '"$input" is a Palindrome'
          : '"$input" is not a Palindrome';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Palindrome Check')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: 'Enter text or number',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkPalindrome,
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
