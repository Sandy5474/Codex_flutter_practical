import 'package:flutter/material.dart';
//import 'package:practical2/Assignment1.dart';
//import 'package:practical2/Assignment2.dart';
// import 'package:practical2/Assignment3.dart';
import 'package:practical2/Assignment4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Assignment4());
  }
}
