import 'package:flutter/material.dart';

class assignment4 extends StatelessWidget {
  const assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.black,
      ),
    );
  }
}
