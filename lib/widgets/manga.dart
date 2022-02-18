import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Manga extends StatelessWidget {
  final String url;
  const Manga({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      width: 150,
      height: 220,
      child: Padding(
        padding: EdgeInsets.only(left: 2.5, right: 2.5, bottom: 25),
        child: Image.network(
          url,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
