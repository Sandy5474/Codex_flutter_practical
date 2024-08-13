import 'package:coffeeapp/screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            child: Image.asset(
              "image/coffee1.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 400, left: 30),
            child: Column(
              children: [
                Text(
                  "Coffee so good,\nyour taste buds\n    will love it.",
                  style: GoogleFonts.sora(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "The best grain, the finest roast, the \n                    powerful flavor.",
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 196, 195, 195)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2(),
                        ));
                  },
                  child: Text("Get Started",
                      style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xffC67C4E)),
                      fixedSize: WidgetStatePropertyAll(Size(315, 60))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
