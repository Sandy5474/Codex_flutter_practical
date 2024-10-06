import 'package:demo_ui/profile.dart';
import 'package:demo_ui/screen1.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  Widget bottomSheet() {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Container(
          height: 228,
          width: 375,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add Task"),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xff979797), width: 5))),
              ),
              Text("Description"),
              Row(
                children: [
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen2(),
                            ));
                      },
                      icon: Icon(Icons.send))
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        backgroundColor: Color(0xff121212),
        leading: Icon(
          Icons.abc,
          color: Colors.white,
        ),
        title: Text("Index", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100))),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Search for your Task...",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 5))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            height: 31,
            width: 76,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("Today"), Icon(Icons.keyboard_arrow_down)],
            ),
          ),
          Container(
            height: 286,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 72,
                  width: 327,
                  color: Color(0xff363636),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white, width: 2)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Do Math Homework"),
                          Text("Today At 16:45"),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.school_sharp),
                                  Text("University"),
                                ],
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [Icon(Icons.bookmark_add), Text("1")],
                              ))
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            height: 31,
            width: 102,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("Completed"), Icon(Icons.keyboard_arrow_down)],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 10, right: 10),
            height: 72,
            width: 380,
            color: Color(0xff363636),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white, width: 2)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Do Math Homework"),
                    Text("Today At 16:45"),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.school_sharp),
                            Text("University"),
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [Icon(Icons.bookmark_add), Text("1")],
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 124,
        width: 375,
        color: Color(0xff363636),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen1(),
                            ));
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  Text("Home", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  IconButton(
                      onPressed: () => Profile(),
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  Text("Calendar", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 80),
              child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => bottomSheet(),
                  );
                },
                icon: Icon(Icons.add),
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.deepPurpleAccent[100])),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  IconButton(
                      onPressed: () => Profile(),
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  Text("Focus", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ));
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  Text("Profile", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
