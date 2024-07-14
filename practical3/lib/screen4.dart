import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INSTAGRAM",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Container(
          width: 400,
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                Row(
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
                  ],
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: const Color.fromARGB(255, 255, 0, 0),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.red,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.ac_unit_sharp,
                          color: Colors.yellow,
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
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
                  ],
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: const Color.fromARGB(255, 255, 0, 0),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.red,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.ac_unit_sharp,
                          color: Colors.yellow,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
