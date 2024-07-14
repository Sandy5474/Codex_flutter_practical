import 'package:flutter/material.dart';
import 'package:practical4/screen1.dart';
import 'package:practical4/screen2.dart';
import 'package:practical4/screen3.dart';
import 'package:practical4/screen4.dart';
import 'package:practical4/screen5.dart';
import 'package:practical4/screen6.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Screen6());
  }
}
