import 'package:flutter/material.dart';
import 'package:practical7/ListView.dart';
import 'package:practical7/MyContainer.dart';
import 'package:practical7/Screen1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Screen1());
  }
}
