import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc_sharp),
        title: Text('Row'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [Icon(Icons.headset)],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      ),
    );
  }
}
