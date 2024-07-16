import 'package:flutter/material.dart';
import 'package:practical5/screen1.dart';
import 'package:practical5/screen2.dart';
import 'package:practical5/screen3.dart';
import 'package:practical5/screen4.dart';
import 'package:practical5/screen5.dart';
import 'package:practical5/screen6.dart';
import 'package:practical5/screen7.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Screen7());
  }
}
