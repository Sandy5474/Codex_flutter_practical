import 'package:flutter/material.dart';
import 'package:practical3/screen1.dart';
import 'package:practical3/screen2.dart';
import 'package:practical3/screen3.dart';
import 'package:practical3/screen4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Screen4());
  }
}
