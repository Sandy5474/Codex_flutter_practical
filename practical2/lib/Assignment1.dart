import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [Icon(Icons.headset)],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
