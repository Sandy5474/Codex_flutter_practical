import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INSTA"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text("B M W",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  width: 190,
                ),
                Container(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.more_horiz)),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              width: 400,
              color: const Color.fromARGB(255, 255, 0, 0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline_rounded)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline_rounded)),
                SizedBox(
                  width: 300,
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
