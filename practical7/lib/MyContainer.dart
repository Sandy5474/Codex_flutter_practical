import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  final String imgurl;
  const Mycontainer({super.key, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.network(imgurl),
    );
  }
}
