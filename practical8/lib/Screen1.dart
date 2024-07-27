import 'package:flutter/material.dart';
import 'package:practical8/Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Screen1"),
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 195,
              width: 196,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image: DecorationImage(
                      image: AssetImage("image/andrew.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 47,
              width: 199,
              color: Colors.blue[300],
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Screen2(imgurl: "image/andrew.jpg"),
                      ));
                },
                child: Text(
                  "View Profile",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blue[300])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
