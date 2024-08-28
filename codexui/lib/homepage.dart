import 'package:codexui/dummydata/dummydata1.dart';
import 'package:codexui/topics.dart';
import 'package:codexui/dummydata/dummydata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 300,
              width: 394,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 55, 149, 0.67),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(200))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 90,
                    width: 112,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/icon.png"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: Text("Hi, Sandy",
                            style: GoogleFonts.jost(
                                fontSize: 30, color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Text(
                          "Hope You are Fine",
                          style: GoogleFonts.quicksand(
                              fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 20),
              child: Text("Courses For You",
                  style: GoogleFonts.anekTamil(
                      fontSize: 20, fontWeight: FontWeight.w500)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 210,
                    width: 450,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: courseList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Topics(
                                      courseData: courseList[index]["topic"],
                                    ),
                                  ));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 30),
                              height: 201,
                              width: 183,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Text(
                                      courseList[index]["courseName"],
                                      style: GoogleFonts.anekTamil(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Image.asset(
                                        courseList[index]["courseImage"]),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: gradientColor[index],
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 1,
                                        color: Colors.grey)
                                  ]),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 20),
              child: Text(
                "Upcoming Events",
                style: GoogleFonts.anekTamil(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                  width: 353,
                  height: 157,
                  margin: EdgeInsets.only(left: 15, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "9th March 2024",
                              style: GoogleFonts.anekTamil(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 70, top: 20),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)))),
                                onPressed: () {},
                                child: Text(
                                  "Join Demo",
                                  style: GoogleFonts.anekTamil(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 12),
                        child: Text(
                          "10 am - 12 am",
                          style: GoogleFonts.anekTamil(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 20),
                        child: Text(
                          "Flutter App Developmet",
                          style: GoogleFonts.anekTamil(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(244, 132, 132, 1),
                        Color.fromRGBO(153, 4, 4, 1)
                      ],
                    ),
                  )),
            )
          ])),
      bottomNavigationBar: Container(
        height: 79,
        width: 375,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: iconList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => screens[index],
                    ));
              },
              child: Container(
                height: 50,
                width: 75,
                child: Center(child: iconList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
