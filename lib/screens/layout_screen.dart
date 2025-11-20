import 'package:flutter/material.dart';

class FlutterLayout extends StatelessWidget {
  const FlutterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Layout"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [Icon(Icons.call), Text("Call")]),
            Column(
              children: [Icon(Icons.navigate_next_outlined), Text("Route")],
            ),
            Column(children: [Icon(Icons.share), Text("Share")]),
          ],
        ),
      ),
    );
  }
}
