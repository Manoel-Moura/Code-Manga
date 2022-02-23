import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';

class Avatar extends StatelessWidget {
  final String text;
  final String url;
  const Avatar({Key? key, required this.text, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(url),
        radius: 50,
        child: Text(
          text,
          style: const TextStyle(
              color: kText, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        // foregroundColor: kText,
      ),
    );
  }
}
