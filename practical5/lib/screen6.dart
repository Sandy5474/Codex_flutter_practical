import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          title: Text("Box Decoration Image Scroll"),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: Center(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    width: 212,
                    height: 204,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(300),
                    )),
                Container(
                  width: 212,
                  height: 204,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(300),
                  ),
                ),
                Container(
                  width: 212,
                  height: 204,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(300),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
