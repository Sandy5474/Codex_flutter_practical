import 'package:flutter/material.dart';
import 'package:practical1/assignment1.dart';
import 'package:practical1/assignment2.dart';
import 'package:practical1/assignment3.dart';
import 'package:practical1/assignment4.dart';
import 'package:practical1/assignment5.dart';
import 'package:practical1/assignment6.dart';
import 'package:practical1/assignment7.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: assignment7());
  }
}
