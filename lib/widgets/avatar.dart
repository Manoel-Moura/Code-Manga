// import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/screens/resum.dart';
import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Avatar extends StatelessWidget {
  final String text;
  final String url;
  final String resume;
  const Avatar(
      {Key? key, required this.text, required this.url, required this.resume})
      : super(key: key);

  // Padding(
  //       padding:
  //           const EdgeInsets.only(top: 18, left: 10, right: 10, bottom: 18),
  //       child: CircleAvatar(
  //         backgroundImage: NetworkImage(url),
  //         radius: 50,
  //         child: Text(
  //           text,
  //           style: const TextStyle(
  //               color: kText, fontSize: 20.0, fontWeight: FontWeight.bold),
  //         ),
  //         // foregroundColor: kText,
  //       ),
  //     );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          right: 8.0,
          left: 8.0,
          bottom: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.red,
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 9.0),
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        // ignore: unnecessary_null_comparison
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
