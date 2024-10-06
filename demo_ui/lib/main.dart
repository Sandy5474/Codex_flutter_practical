import 'package:demo_ui/profile.dart';
import 'package:demo_ui/screen1.dart';
import 'package:demo_ui/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Screen1());
  }
}
