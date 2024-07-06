import 'package:flutter/material.dart';

class assignment5 extends StatelessWidget {
  const assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 13, 13),
      ),
      body: Container(
        height: 100,
        width: 100,
        child: Text("Demo"),
        color: Colors.pinkAccent,
      ),
    );
  }
}
