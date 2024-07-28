import 'package:flutter/material.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  int count = 0;

  void reload() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  Widget myName() {
    if (count >= 1) {
      return Text(
        "Sandesh Ghorpade",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
      );
    }
    return Container();
  }

  Widget myPic() {
    if (count >= 2) {
      return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Container(
            height: 190,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage("image/sandesh.jpg"), fit: BoxFit.cover)),
          ),
        ),
      );
    }
    return Container();
  }

  Widget myInfo() {
    if (count >= 3) {
      return Container(
          child: Text(
        "Myself Sandesh Ghorpade , I am from Satara.",
        style: TextStyle(fontSize: 20),
      ));
    }
    return Container();
  }

  Widget languages() {
    if (count >= 4) {
      return Container(
        child: Text(
          "Language : ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  Widget languagesImages() {
    if (count >= 5) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/C.png"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/c++.png"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/dart.png"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/java.png"),
              ),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget FrameWork() {
    if (count >= 6) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const Text(
          "FrameWorks : ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  Widget FrameWorkImages() {
    if (count >= 7) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/flutter.png"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/reactjs.png"),
              ),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget Database() {
    if (count >= 8) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const Text(
          "Database : ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  Widget DatabaseImages() {
    if (count >= 9) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/mongodb.png"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/MySQL.png"),
              ),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget Tools() {
    if (count >= 10) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const Text(
          "Tools : ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  Widget ToolsImages() {
    if (count >= 11) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/git.png"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/hibernate.png"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/vscode.jpg"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("image/Msaccess.png"),
              ),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PortFolio"),
          actions: [
            IconButton(
                onPressed: () {
                  reset();
                },
                icon: Icon(Icons.restart_alt))
          ],
        ),
        floatingActionButton:
            IconButton(onPressed: reload, icon: const Icon(Icons.add)),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  myName(),
                  myPic(),
                  myInfo(),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        languages(),
                        languagesImages(),
                        FrameWork(),
                        FrameWorkImages(),
                        Database(),
                        DatabaseImages(),
                        Tools(),
                        ToolsImages()
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
