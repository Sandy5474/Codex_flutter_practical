import 'package:coffeeapp/screen4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatefulWidget {
  final String imgList;
  final String rate;
  final String information;
  final String costing;
  const Screen3(
      {Key? key,
      required this.imgList,
      required this.rate,
      required this.information,
      required this.costing})
      : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail",
          style: GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_outline_rounded))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 226,
              width: 315,
              child: Image.asset(
                "${widget.imgList}",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 170, top: 10),
              child: Column(
                children: [
                  Text("Cappuccino",
                      style: GoogleFonts.sora(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                  Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text('${widget.information}',
                          style: GoogleFonts.sora(
                              fontSize: 12, fontWeight: FontWeight.w400))),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Color(0xffFBBE21),
                    size: 30,
                  ),
                  Text("${widget.rate}",
                      style: GoogleFonts.sora(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  Text("(230)",
                      style: GoogleFonts.sora(
                          fontSize: 12, fontWeight: FontWeight.w400)),
                  Container(
                    margin: EdgeInsets.only(left: 120),
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          color: Color(0xffF9F9F9),
                          child: Image.asset("image/Mask Group.png"),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          color: Color(0xffF9F9F9),
                          child: Image.asset("image/milk.png"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 315,
              height: 1,
              color: Color(0xffEAEAEA),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 200),
              child: Text("Description",
                  style: GoogleFonts.sora(
                      fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                  "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..Read More",
                  style: GoogleFonts.sora(
                      fontSize: 14, fontWeight: FontWeight.w400)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 260),
              child: Text("Size",
                  style: GoogleFonts.sora(
                      fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 43,
                    width: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Color(0xffDEDEDE), width: 1),
                    ),
                    child: Center(child: Text("S")),
                  ),
                  Container(
                    height: 43,
                    width: 96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Color(0xffC67C4E), width: 1),
                        color: Color(0xffFFF5EE)),
                    child: Center(child: Text("M")),
                  ),
                  Container(
                    height: 43,
                    width: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Color(0xffDEDEDE), width: 1),
                    ),
                    child: Center(child: Text("L")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 105,
        width: 376,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Price",
                        style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9B9B9B))),
                    Text("${widget.costing}",
                        style: GoogleFonts.sora(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffC67C4E)))
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Order(
                          imgprof: "${widget.imgList}",
                          orderinfo: "${widget.information}",
                          ordercost: "${widget.costing}",
                        ),
                      ));
                },
                child: Text("Buy Now",
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xffC67C4E)),
                    fixedSize: WidgetStatePropertyAll(Size(217, 62))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
