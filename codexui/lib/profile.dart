import 'package:codexui/dummydata/dummydata.dart';
import 'package:codexui/dummydata/dummydata1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.black,
                      )),
                ),
                Text(
                  "Profile",
                  style: GoogleFonts.dmSans(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 89,
              width: 343,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Color(0xffB3B1F6),
                ),
              ]),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 53,
                      width: 53,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          border: Border.all(width: 2, color: Colors.white),
                          image: DecorationImage(
                              image: AssetImage("images/profile.png"))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Itunuoluwa Abidoye",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text("@Itunuoluwa",
                              style: GoogleFonts.dmSans(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffD7D7D7),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 18,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 350,
              width: 343,
              color: Colors.white,
              child: Container(
                height: 300,
                width: 311,
                child: ListView.builder(
                  itemCount: iconData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 310.98,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              iconbuttonData[index],
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        profileData[index]["info"],
                                        style: GoogleFonts.dmSans(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        profileData[index]["infoDescription"],
                                        style: GoogleFonts.dmSans(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            iconData[index],
                            color: Color(0xffABABAB),
                            size: 11.68,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "More",
                style: GoogleFonts.dmSans(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 30, left: 10),
              height: 139,
              width: 343,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.notifications_outlined,
                                      size: 40,
                                    )),
                                Text(
                                  'Help & Support',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xffABABAB),
                              size: 11.68,
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline_rounded,
                                  size: 40,
                                )),
                            Text(
                              'About App',
                              style: GoogleFonts.dmSans(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xffABABAB),
                          size: 11.68,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
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
