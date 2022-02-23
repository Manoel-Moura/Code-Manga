import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/screens/resum.dart';
import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';

class Avatar extends StatelessWidget {
  final String text;
  final String url;
  final String resume;
  const Avatar(
      {Key? key, required this.text, required this.url, required this.resume})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 18, left: 10, right: 10, bottom: 18),
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
      ),
      onTap: () {
        if (text != null) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Resume(
                resume: resume,
                title: text,
                url: url,
              ),
            ),
          );
        }
      },
    );
  }
}
