import 'package:coffeeapp/screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<String> img = [
    "image/coffee3.png",
    "image/coffee4.png",
    "image/coffee5.png",
    "image/coffee6.png"
  ];

  List info = [
    "with Chocolate",
    "with Oat Milk",
    "with Caremela",
    "with Ice cream"
  ];

  List rating = [
    "4.5",
    "4.9",
    "5.0",
    "4.4",
  ];

  List cost = ["\$4.53", "\$3.90", "\$4.90", "\$4.20"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 280,
          width: 375,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff313131), Color(0xff131313)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Location",
                    style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage("image/profile.png"))),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Bilzen, Tanjungbalai",
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 140,
                width: 315,
                child: Image.asset("image/coffee2.png"),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 300, left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Cappuccino",
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xffC67C4E))),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Machiato",
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Latte",
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 350),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 30, mainAxisExtent: 240),
            itemCount: img.length,
            itemBuilder: (context, index) {
              return Container(
                  height: 239,
                  width: 149,
                  child: Column(children: [
                    InkWell(
                      child: Container(
                        height: 239,
                        width: 149,
                        child: Column(
                          children: [
                            Container(
                                height: 132,
                                width: 141,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(img[index]))),
                                child: Container(
                                  margin: EdgeInsets.only(left: 5, top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      Text(
                                        rating[index],
                                        style: GoogleFonts.sora(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 30, top: 5),
                                child: Text(
                                  "Cappucino",
                                  style: GoogleFonts.sora(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(info[index])),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 15, right: 10, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    cost[index],
                                    style: GoogleFonts.sora(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xffC67C4E)),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen3(
                                imgList: img[index],
                                rate: rating[index],
                                information: info[index],
                                costing: cost[index],
                              ),
                            ));
                      },
                    )
                  ]));
            },
          ),
        )
      ]),
    );
  }
}
