// import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/screens/resum.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Avatar extends StatelessWidget {
  final String text;
  final String url;
  final String resume;
  final String nCapitulo;
  final String nVolumes;
  final String ranking;
  const Avatar(
      {Key? key,
      required this.text,
      required this.url,
      required this.nCapitulo,
      required this.nVolumes,
      required this.ranking,
      required this.resume})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          right: 10.0,
          left: 10.0,
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
                text.substring(0, text.length <= 12 ? null : 12),
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
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
                nCapitulo: nCapitulo,
                nVolumes: nVolumes,
                ranking: ranking,
              ),
            ),
          );
        }
      },
    );
  }
}
