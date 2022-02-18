import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/consts/colors/colors.dart';

class Categoria extends StatelessWidget {
  final String text;
  const Categoria({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: CircleAvatar(
            backgroundColor: kprimaryColor,
            radius: 3.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15, left: 3, right: 15),
          child: Text(
            text,
            style: TextStyle(
                color: KText, fontSize: 11.0, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
