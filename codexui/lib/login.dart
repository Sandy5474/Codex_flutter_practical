import 'package:codexui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String? name = "";

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                  height: 315,
                  width: 394,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(44, 55, 149, 0.67),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(157.5))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            "Welcome",
                            style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                fontSize: 40,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40, top: 10),
                          child: Text("Please sign in to continue",
                              style: GoogleFonts.quicksand(
                                  fontSize: 20, color: Colors.white)),
                        ),
                      ])),
              Container(
                  child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 80),
                  width: 300,
                  child: TextField(
                      onChanged: (value) {
                        name = value;
                      },
                      controller: usernameController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Mobile no. or email",
                          hintStyle: GoogleFonts.anekTamil(
                              fontWeight: FontWeight.w400, fontSize: 15),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.close_rounded)))),
                ),
                Container(
                  width: 300,
                  child: TextField(
                      onChanged: (value) {
                        name = value;
                      },
                      controller: passwordController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          hintStyle: GoogleFonts.anekTamil(
                              fontWeight: FontWeight.w400, fontSize: 15),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_off)))),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text("Forgot password?",
                      style: GoogleFonts.anekTamil(fontSize: 13)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 291,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homepage(),
                          ));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xFF6371F2))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        "Don't have an account?",
                        style: GoogleFonts.anekTamil(fontSize: 13),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text("Sign up",
                          style: GoogleFonts.anekTamil(
                              color: Colors.red, fontSize: 13)),
                    )
                  ],
                )
              ]))
            ])));
  }
}
