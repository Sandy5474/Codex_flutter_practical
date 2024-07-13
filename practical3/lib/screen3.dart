import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Text("AMBER"),
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            Text("BLACK"),
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            Text("RED"),
          ],
        ),
      ),
    );
  }
}
