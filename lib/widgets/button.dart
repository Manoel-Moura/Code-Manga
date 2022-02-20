import 'dart:ffi';

import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/screens/navHomePage.dart';
import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/consts/colors/colors.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NavHome()));
      },
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
      style: TextButton.styleFrom(
        primary: KText,
        backgroundColor: kprimaryColor,
        // elevation: 20,
        minimumSize: Size(800, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
