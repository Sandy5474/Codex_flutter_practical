import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          title: Text("Box Decoration"),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: Center(
        child: Container(
          width: 212,
          height: 204,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              color: Colors.greenAccent[400]),
        ),
      ),
    );
  }
}
