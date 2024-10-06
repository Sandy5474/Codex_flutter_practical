import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_application/category/categoryPage.dart';
import 'package:todo_application/login/reusable.dart';
import 'package:todo_application/login/signup.dart';

class SignIn extends StatefulWidget {
  String? username;
  SignIn({super.key, this.username});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
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
        body: Column(children: [
          SizedBox(
            height: 170,
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text("Welcome Back",
                          style: GoogleFonts.inter(
                              fontSize: 35.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue)),
                    ),
                    Expanded(
                        child: reusableTextFormField(emailController, false,
                            Icons.co_present_rounded, "Enter your E-mail...")),
                    Expanded(
                        child: reusableTextFormField(passwordController, true,
                            Icons.password, "Enter your Password")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap: _toggleCheck,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:
                                        isChecked ? Colors.green : Colors.grey,
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
                            Text("Remember me"),
                          ],
                        ),
                        Text("Forgot password?")
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
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
                                SnackBar(content: Text("Sign in Successful")));
                          },
                        ).onError(
                          (error, stackTrace) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(error.toString())));
                          },
                        );
                      },
                      child: Text("Sign In"),
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
                        Text("Sign in with"),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
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
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("Don't have an account?"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ));
                        },
                        child: Text("Sign Up",
                            style: TextStyle(color: Colors.black)),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                      )
                    ]),
                  ],
                ))),
          ),
        ]),
      ),
    );
  }
}
