import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
    );
  }
}
