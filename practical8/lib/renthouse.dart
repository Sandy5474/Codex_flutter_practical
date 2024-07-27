import 'package:flutter/material.dart';
import 'package:practical8/category.dart';

class RentHouse extends StatelessWidget {
  const RentHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 16, 16),
      body: Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 50, top: 80),
          child: Text(
            "Rent a House",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 110),
          height: 515,
          width: 414,
          child: Container(
            margin: EdgeInsets.only(left: 50, top: 30),
            child: Text("for you.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700)),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("image/house.jpg"))),
        ),
      ]),
      bottomSheet: Container(
        height: 150,
        width: double.infinity,
        color: Colors.black,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(120, 60),
                  topRight: Radius.elliptical(120, 60)),
              color: Colors.white),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text("Reservation Now")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Category(),
                      ));
                },
                child: Text(
                  "BOOK NOW",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ))
          ]),
        ),
      ),
    );
  }
}
