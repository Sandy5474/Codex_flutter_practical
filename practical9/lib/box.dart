import 'package:flutter/material.dart';

class BoxColor extends StatefulWidget {
  const BoxColor({super.key});

  @override
  State<BoxColor> createState() => _BoxColorState();
}

class _BoxColorState extends State<BoxColor> {
  bool boxcolor = false;

  void ChangeColor() {
    setState(() {
      if (boxcolor) {
        boxcolor = false;
      } else {
        boxcolor = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Color"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          child: Container(
            height: 200,
            width: 200,
            color: boxcolor ? Colors.black : Colors.red,
          ),
          onTap: () {
            ChangeColor();
          },
        ),
      ),
    );
  }
}
