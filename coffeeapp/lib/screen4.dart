import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatefulWidget {
  final String imgprof;
  final String ordercost;
  final String orderinfo;

  const Order(
      {Key? key,
      required this.imgprof,
      required this.orderinfo,
      required this.ordercost})
      : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order",
            style: GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 48,
              width: 315,
              color: Color(0xffF2F2F2),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 153.5,
                    child: Center(
                      child: Text(
                        "Deliver",
                        style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffC67C4E)),
                  ),
                  Container(
                    height: 40,
                    width: 153.5,
                    child: Center(
                      child: Text(
                        "Pick Up",
                        style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2F2D2C)),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffF2F2F2)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Delivery Address",
                  style: GoogleFonts.sora(
                      fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("Jl. Kpg Sutoyo",
                  style: GoogleFonts.sora(
                      fontSize: 14, fontWeight: FontWeight.w600)),
            ),
            Text("Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                style: GoogleFonts.sora(
                    fontSize: 12, fontWeight: FontWeight.w400)),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 27,
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("image/edit.png"),
                          ),
                          Text("Edit Address",
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ],
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("image/note.png"),
                          ),
                          Text("Add Note",
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ],
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 2,
              width: 315,
              color: Color(0xffEAEAEA),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage(
                              "${widget.imgprof}",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          "Cappucino",
                          style: GoogleFonts.sora(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text("${widget.orderinfo}",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9B9B9B)))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 55),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_outlined),
                        ),
                        Text("1",
                            style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 4,
              width: double.infinity,
              color: Color(0xffF4F4F4),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(top: 20, bottom: 10),
              height: 56,
              width: 315,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    color: Color(0xff),
                    child: Image.asset("image/Discount.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 70),
                    child: Text("1 Discount is applied",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            Text("Payment Summary",
                style: GoogleFonts.sora(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  Text("${widget.ordercost}",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text("Delivery Fee",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 140),
                    child: Text("\$2.00",
                        style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text("\$1.0",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        )),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 2,
              width: 315,
              color: Color(0xffEAEAEA),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Payment",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                Text("\$5.53",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ))
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    child: Image.asset("image/moneys.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 24,
                    width: 112,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Cash",
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffC67C4E))),
                        ),
                        Text(
                          "\$5.53",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Order",
                  style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xffC67C4E)),
                  fixedSize: WidgetStatePropertyAll(Size(315, 62))),
            )
          ],
        ),
      ),
    );
  }
}
