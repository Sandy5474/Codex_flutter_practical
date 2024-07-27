import 'package:flutter/material.dart';
import 'package:practical9/box.dart';
import 'package:practical9/increment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Number());
  }
}
