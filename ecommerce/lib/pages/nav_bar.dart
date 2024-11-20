import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/pages/Home/home_screen.dart';
import 'package:ecommerce/pages/order/order.dart';
import 'package:ecommerce/pages/profile/profile.dart';

import 'package:flutter/material.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  List pages = [HomeScreen(), Order(), Profile()];
  int currentPageindex = 0;

  @override
  void initState() {
    pages;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentPageindex = index;
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.person_outline_rounded, color: Colors.white),
        ],
      ),
      body: pages[currentPageindex],
    );
  }
}
