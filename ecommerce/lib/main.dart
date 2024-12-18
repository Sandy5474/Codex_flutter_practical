import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/pages/Admin/add_product.dart';
import 'package:ecommerce/pages/Admin/adminlogin.dart';
import 'package:ecommerce/pages/Admin/all_orders.dart';
import 'package:ecommerce/pages/Admin/home_admin.dart';
import 'package:ecommerce/pages/Home/home_screen.dart';
import 'package:ecommerce/pages/Signup/signup.dart';
import 'package:ecommerce/pages/firstpage.dart';
import 'package:ecommerce/pages/login/login.dart';
import 'package:ecommerce/pages/nav_bar.dart';
import 'package:ecommerce/services/constants.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WelcomPage());
  }
}
