import 'package:ecommerce/pages/Home/home_screen.dart';
import 'package:ecommerce/pages/login/login.dart';
import 'package:ecommerce/pages/nav_bar.dart';
import 'package:ecommerce/services/firebase_services.dart';
import 'package:ecommerce/services/shared_pref.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 241, 241),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                    height: 170,
                    width: MediaQuery.sizeOf(context).width,
                    child: Image.asset(
                      "images/login.png",
                      fit: BoxFit.contain,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please enter the details",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(179, 201, 201, 201),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your Username..."),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(179, 201, 201, 201),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your Email..."),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(179, 201, 201, 201),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your Password..."),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                      .then(
                    (value) async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => bottomNavigation(),
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sign Up Successfull")));
                      String id = randomAlphaNumeric(10);
                      await SharedPreferenceHelper()
                          .saveUserEmail(emailController.text);
                      await SharedPreferenceHelper().saveUserId(id);
                      await SharedPreferenceHelper().saveUserImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDVH9h9L8gB7ycQ3Pbp-nYYGPMUdItGS8VRg&s");
                      await SharedPreferenceHelper()
                          .saveUserName(usernameController.text);

                      Map<String, dynamic> userInfo = {
                        "Name": usernameController.text,
                        "Email": emailController.text,
                        "Id": id,
                        "Image":
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDVH9h9L8gB7ycQ3Pbp-nYYGPMUdItGS8VRg&s"
                      };
                      await FirebaseServices().addUserDetails(userInfo, id);
                    },
                  ).onError(
                    (error, stackTrace) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sign Up failed $error")));
                    },
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: 60,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.orange),
                  child: Center(
                      child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an Account?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text("Sign In",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.orange,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
