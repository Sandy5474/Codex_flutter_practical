import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.black,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    margin: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    margin: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    margin: EdgeInsets.only(top: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
