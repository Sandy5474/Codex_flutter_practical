import 'package:flutter/material.dart';
import 'package:practical7/Screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Screen3(),
              ));
        },
      ),
    );
  }
}
