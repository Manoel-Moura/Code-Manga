import 'package:code_manga/screens/resum.dart';
import 'package:flutter/material.dart';

class Manga extends StatelessWidget {
  final String title;
  final String resume;
  final String url;
  final String nCapitulo;
  final String nVolumes;
  final String ranking;
  const Manga(
      {Key? key,
      required this.url,
      required this.title,
      required this.nCapitulo,
      required this.nVolumes,
      required this.ranking,
      required this.resume})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Manga card
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          width: 150,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(url),
            ),
          ),
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
