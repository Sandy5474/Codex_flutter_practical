import 'package:flutter/material.dart';

class assignment6 extends StatelessWidget {
  const assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Text("Demo"),
          ),
          height: 100,
          width: 100,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
