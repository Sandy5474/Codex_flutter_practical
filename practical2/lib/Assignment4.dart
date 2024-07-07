import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
