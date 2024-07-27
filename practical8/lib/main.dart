import 'package:flutter/material.dart';
import 'package:practical8/Screen1.dart';
import 'package:practical8/renthouse.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Screen1());
  }
}
