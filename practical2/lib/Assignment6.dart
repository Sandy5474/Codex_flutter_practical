import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROW ASSIGNMENT 6"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 330,
              width: 480,
              color: Colors.red,
              child: Center(
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 88,
                        width: 101,
                        color: Colors.white,
                      ),
                      Container(
                        height: 88,
                        width: 101,
                        color: Colors.white,
                      ),
                      Container(
                        height: 88,
                        width: 101,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 330,
              width: 480,
              color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 88,
                      width: 101,
                      color: Colors.white,
                    ),
                    Container(
                      height: 88,
                      width: 101,
                      color: Colors.white,
                    ),
                    Container(
                      height: 88,
                      width: 101,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
