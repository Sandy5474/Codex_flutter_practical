import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
