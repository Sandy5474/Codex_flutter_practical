import 'package:flutter/material.dart';

class assignment7 extends StatelessWidget {
  const assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey),
        body: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
            ),
          ],
        ));
  }
}
