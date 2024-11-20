import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/pages/Admin/add_product.dart';
import 'package:ecommerce/pages/Admin/home_admin.dart';
import 'package:ecommerce/pages/Home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  TextEditingController usernameController = TextEditingController();
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
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                    height: 250,
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
                "Admin Panel",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                              border: InputBorder.none, hintText: "Username"),
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
                          controller: passwordController,
                          obscureText: true,
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
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  loginAdmin();
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
                    "LOGIN",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then(
      (snapshot) {
        snapshot.docs.forEach(
          (result) {
            if (result.data()['username'] != usernameController.text.trim() &&
                result.data()['password'] != passwordController.text.trim()) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Incorect username or password")));
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeAdmin(),
                  ));
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Admin Login Successfull")));
            }
          },
        );
      },
    );
  }
}
