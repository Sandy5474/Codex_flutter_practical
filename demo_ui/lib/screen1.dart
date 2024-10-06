import 'package:demo_ui/profile.dart';
import 'package:demo_ui/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController inputcontroller = TextEditingController();

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
                controller: inputcontroller,
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
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image:
                      DecorationImage(image: AssetImage("image/profile.png"))),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 74, left: 74),
        child: Column(
          children: [
            Container(
              height: 227,
              width: 227,
              child: Image.asset("image/home.png"),
            ),
            Text(
              "What do you want to do today?",
              style: TextStyle(color: Colors.white),
            ),
            Text("Tap + to your tasks", style: TextStyle(color: Colors.white)),
          ],
        ),
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
