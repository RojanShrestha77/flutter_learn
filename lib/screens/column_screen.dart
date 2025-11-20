import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertical centering
          crossAxisAlignment: CrossAxisAlignment.center, // horizontal centering
          children: const [
            Text('Item 1', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10), // add spacing between items
            Text('Item 2', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Item 3', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
