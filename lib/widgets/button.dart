import 'package:code_manga/screens/navHomePage.dart';
import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
      style: TextButton.styleFrom(
        primary: kText,
        backgroundColor: kprimaryColor,
        // elevation: 20,
        minimumSize: const Size(800, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
