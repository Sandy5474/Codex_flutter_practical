import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          title: Text(
            "Container image with scroll",
          ),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: 354,
              height: 428,
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                  "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
            ),
            Container(
              width: 354,
              height: 428,
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                  "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
            ),
          ],
        )),
      ),
    );
  }
}
