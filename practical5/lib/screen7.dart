import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          title: Text("Profile Screen Scrollable"),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 75,
                  height: 77,
                  margin: EdgeInsets.only(top: 20, left: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(300),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 22, top: 20),
                      child: Text("James Gosling",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w400)),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Text(
                          "Founder Java",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
                  ],
                )
              ],
            ),
            Container(
              width: 398,
              height: 1,
              margin: EdgeInsets.only(top: 33),
              color: Colors.black,
            ),
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
