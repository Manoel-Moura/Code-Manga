import 'package:code_manga/consts/colors/colors.dart';

import 'package:code_manga/screens/resum.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Destaque extends StatelessWidget {
  final String title;
  final String url;
  final String resume;
  final String nCapitulo;
  final String nVolumes;
  final String ranking;

  const Destaque(
      {Key? key,
      required this.title,
      required this.url,
      required this.resume,
      required this.nCapitulo,
      required this.nVolumes,
      required this.ranking})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.height) / 2.5,
        child: Stack(
          children: [
            Image.network(
              url,
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Manga',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: kBackgroundColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kprimaryColor,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        // ignore: unnecessary_null_comparison
        if (title != null) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Resume(
                resume: resume,
                title: title,
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
