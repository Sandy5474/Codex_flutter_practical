import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List profileData = [
  {"info": "My Account ", "infoDescription": "Make changes to your account"},
  {"info": "Saved Beneficiary", "infoDescription": "Manage your saved account"},
  {
    "info": "Face ID / Touch ID",
    "infoDescription": "Manage your device security"
  },
  {
    "info": "Two-Factor Authentication",
    "infoDescription": "Further secure your account for safety"
  },
  {
    "info": "Log out",
    "infoDescription": "Further secure your account for safety"
  }
];

final iconData = <IconData>[
  Icons.arrow_forward_ios_sharp,
  Icons.arrow_forward_ios_sharp,
  Icons.arrow_forward_ios_sharp,
  Icons.arrow_forward_ios_sharp,
  Icons.arrow_forward_ios_sharp,
];

final iconbuttonData = [
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.account_circle_sharp,
        size: 40,
        color: Color(0xff0601B4),
      )),
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.account_circle_sharp,
      size: 40,
      color: Color(0xff0601B4),
    ),
  ),
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.lock_outline_rounded,
        size: 40,
        color: Color(0xff0601B4),
      )),
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.verified_user_outlined,
        size: 40,
        color: Color(0xff0601B4),
      )),
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.logout_outlined,
        size: 40,
        color: Color(0xff0601B4),
      )),
];
