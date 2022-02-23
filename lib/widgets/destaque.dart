import 'package:code_manga/API/mangaApiModel.dart';
import 'package:code_manga/API/repositoryUnity.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/screens/resum.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class Destaque extends StatelessWidget {
  final String title;
  final String url;
  final String resume;
  const Destaque(
      {Key? key, required this.title, required this.url, required this.resume})
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
        if (title != null) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Resume(
                resume: resume,
                title: title,
                url: url,
              ),
            ),
          );
        }
      },
    );
  }
}
