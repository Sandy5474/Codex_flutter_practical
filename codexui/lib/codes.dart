import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/github.dart';

import 'package:google_fonts/google_fonts.dart';

class Codes extends StatelessWidget {
  final courseTopic;

  const Codes({
    super.key,
    this.courseTopic,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF9B89CE),
        body: Column(children: [
          Container(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "Java",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "Full Stack",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 156,
                  width: 156,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset("images/java1.png"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(13, 18, 164, 1),
                        Color.fromRGBO(45, 22, 191, 0.831),
                        Color.fromRGBO(0, 0, 0, 1),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(courseTopic["topicName"],
                        style: GoogleFonts.anekTamil(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    width: 390,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("What is Java",
                                style: GoogleFonts.anekTamil(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45, top: 20),
                        child: Text(courseTopic["topicDescription"],
                            style: GoogleFonts.anekTamil(
                                fontSize: 20, fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("Java is Platform Independent",
                                style: GoogleFonts.anekTamil(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45, top: 20),
                        child: Text(courseTopic["topicDescription"],
                            style: GoogleFonts.anekTamil(
                                fontSize: 20, fontWeight: FontWeight.w400)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        height: 94,
                        width: 390,
                        child: ListView.builder(
                          itemCount: courseTopic["code"].length,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Code ${index + 1} :",
                                  style: GoogleFonts.anekTamil(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  height: 135,
                                  width: 305,
                                  child: SingleChildScrollView(
                                    child: HighlightView(
                                      courseTopic["code"][index],
                                      textStyle: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                      language: "java",
                                      theme: githubTheme,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
