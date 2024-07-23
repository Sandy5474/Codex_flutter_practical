import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            color: Colors.red,
            margin: EdgeInsets.all(10),
          );
        },
      ),
    );
  }
}
