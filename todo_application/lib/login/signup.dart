import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:todo_application/category/categoryPage.dart';

import 'package:todo_application/login/reusable.dart';
import 'package:todo_application/login/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _toggleCheck() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg1.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: 170,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Get Started",
                            style: GoogleFonts.inter(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue)),
                        reusableTextFormField(fullnameController, false,
                            Icons.account_box, "Enter your Username"),
                        reusableTextFormField(emailController, false,
                            Icons.co_present_rounded, "Enter your email.."),
                        reusableTextFormField(passwordController, true,
                            Icons.password, "Enter your password"),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: _toggleCheck,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: isChecked
                                          ? Colors.green
                                          : Colors.grey,
                                    ),
                                    child: Center(
                                      child: isChecked
                                          ? Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          : null,
                                    ),
                                  )),
                              Text("I agree to the processing of"),
                              Text(
                                "Personal Data",
                                style: TextStyle(color: Colors.blue),
                              )
                            ]),
                        ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text)
                                .then(
                              (value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CategoryScreen(),
                                    ));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text("Sign Up Successful")));
                              },
                            );
                          },
                          child: Text("Sign Up"),
                          style: ButtonStyle(
                              fixedSize: WidgetStatePropertyAll(Size(200, 20)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.green)),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Text("Sign up with"),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("images/apple.png"),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("images/twitter.png"),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("images/google.png"),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("images/facebook.jpeg"),
                              )
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignIn(
                                          username: fullnameController.text,
                                        ),
                                      ));
                                },
                                child: Text("Sign In",
                                    style: TextStyle(color: Colors.black)),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                              )
                            ]),
                      ]),
                ),
              ))
            ],
          ),
        ));
  }
}
