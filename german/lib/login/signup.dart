import 'package:flutter/material.dart';
import 'package:german/list/list.dart';
import 'package:german/login/signin.dart';
import 'package:german/login/welcomescreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _namekey = GlobalKey<FormState>();

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
                image: AssetImage("image/bg1.png"), fit: BoxFit.cover)),
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
                            style: fonts[8].copyWith(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue)),
                        Form(
                          key: _namekey,
                          child: TextFormField(
                            controller: fullnameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter your full name",
                              prefixIcon: Icon(Icons.account_box),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12, // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your Username";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Form(
                          key: _formkey,
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter your e-mail",
                              prefixIcon: Icon(Icons.co_present_rounded),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12, // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your Email";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Form(
                          key: _passkey,
                          child: TextFormField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            controller: passwordController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12, // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your Password";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
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
                            bool loginValidator =
                                _formkey.currentState!.validate();
                            bool signinValidator =
                                _passkey.currentState!.validate();
                            bool signupValidator =
                                _namekey.currentState!.validate();
                            if (loginValidator &&
                                signinValidator &&
                                signupValidator) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WelcomeScreen(),
                                  ));
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "Signup Successfull, SignIn again to continue")));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Signup Failed")));
                            }
                          },
                          child: Text("Sign Up"),
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll(Size(200, 20)),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green)),
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
                                child: Image.asset("image/apple.png"),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("image/twitter.png"),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("image/google.png"),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("image/facebook.jpeg"),
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
                                        builder: (context) => SignIn(),
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
