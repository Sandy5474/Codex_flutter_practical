import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("Search Now"))
                    ],
                  ),
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(300, 10))),
                ),
                Container(
                  height: 50.49,
                  width: 50.49,
                  margin: EdgeInsets.only(top: 5),
                  child:
                      Center(child: Icon(Icons.format_list_bulleted_rounded)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.black, width: 1)),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 113.6,
                    width: 113.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.ac_unit_rounded),
                        Text(
                          "Near By",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              color: Color.fromARGB(255, 195, 195, 195),
                              blurRadius: 2,
                              offset: Offset(5, 5))
                        ],
                        color: Colors.white),
                  ),
                  Container(
                    height: 113.6,
                    width: 113.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.book_online_rounded),
                        Text(
                          "Book Room",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3,
                              color: Color.fromARGB(255, 195, 195, 195),
                              blurRadius: 3,
                              offset: Offset(5, 5))
                        ],
                        color: Colors.white),
                  ),
                  Container(
                    height: 113.6,
                    width: 113.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.calendar_month_sharp),
                        Text(
                          "Add Event",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3,
                              color: Color.fromARGB(255, 195, 195, 195),
                              blurRadius: 3,
                              offset: Offset(5, 5))
                        ],
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 250, top: 10, left: 10),
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "House",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black))),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Villa",
                            style: TextStyle(color: Colors.black))),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Apartment",
                            style: TextStyle(color: Colors.black))),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Pent House",
                            style: TextStyle(color: Colors.black))),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 235,
              width: 340.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage("image/woodenhut.jpg"))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Wooden Hut",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "Rp. 249.000 / Night",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.view_compact_alt_outlined,
                      color: Colors.blueAccent,
                    )),
                Text(
                  "Merbabu, Central Java",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(Icons.blender)),
                Text(
                  "All Inclusive",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
                Icon(Icons.home),
                Text("Free Wifi",
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
                Icon(Icons.calendar_today_rounded),
                Text("Free Consulation",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400))
              ],
            ),
            Container(
              height: 235,
              width: 340.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(image: AssetImage("image/hut.jpg"))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Wooden Hut",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "Rp. 249.000 / Night",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.view_compact_alt_outlined,
                      color: Colors.blueAccent,
                    )),
                Text(
                  "Merbabu, Central Java",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(Icons.blender)),
                Text(
                  "All Inclusive",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
                Icon(Icons.home),
                Text("Free Wifi",
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
                Icon(Icons.calendar_today_rounded),
                Text("Free Consulation",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
