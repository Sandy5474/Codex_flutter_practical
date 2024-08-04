import 'package:flutter/material.dart';
import 'package:german/list/list.dart';
import 'package:german/login/signup.dart';
import 'package:german/screens/screen1.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passkey = GlobalKey<FormState>();

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
                          style: fonts[8].copyWith(
                              fontSize: 35.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue)),
                    ),
                    Form(
                      key: _formkey,
                      child: Expanded(
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: const Text("Email"),
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
                    ),
                    Form(
                      key: _passkey,
                      child: Expanded(
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          controller: passwordController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            label: const Text("Password"),
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
                    ),
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
                        bool loginValidator = _formkey.currentState!.validate();
                        bool signinValidator =
                            _passkey.currentState!.validate();

                        if (loginValidator && signinValidator) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen1(),
                              ));
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Signin Successfull")));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Signin Failed")));
                        }
                      },
                      child: Text("Sign In"),
                      style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(200, 20)),
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
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("Don't have an account?"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
                        },
                        child: Text("Sign Up",
                            style: TextStyle(color: Colors.black)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
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
