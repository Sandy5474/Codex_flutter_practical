import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          title: Text("Box Decoration Image"),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: Center(
        child: Container(
          width: 212,
          height: 204,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(300),
          ),
        ),
      ),
    );
  }
}
