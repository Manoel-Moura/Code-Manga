import 'package:code_manga/API/mangaModel.dart';
import 'package:code_manga/API/repository.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/screens/resum.dart';
import 'dart:math';
import 'package:code_manga/widgets/categoria.dart';
import 'package:code_manga/widgets/avatar.dart';
import 'package:code_manga/widgets/manga.dart';

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';
import 'package:provider/provider.dart';

class Destaque extends StatefulWidget {
  const Destaque({Key? key}) : super(key: key);

  @override
  _DestaqueState createState() => _DestaqueState();
}

class _DestaqueState extends State<Destaque> {
  @override
  Widget build(BuildContext context) {
    Repository r = Provider.of(context);
    var nome;
    var url;
    var resum;
    Random random = new Random();
    int randomNumber = random.nextInt(200000);

    return GestureDetector(
      child: FutureBuilder(
        future: r.getManga(randomNumber),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            MangaApiModel manga = snapshot.data as MangaApiModel;
            nome = '${manga.data!.title}';
            url = '${manga.data!.images!.jpg!.imageUrl}';
            resum = '${manga.data!.synopsis}';
            return Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height) / 2.5,
              child: Stack(
                children: [
                  Image.network(
                    '${manga.data!.images!.jpg!.imageUrl}',
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
                            style: TextStyle(
                                color: kBackgroundColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          '${manga.data!.title}',
                          style: TextStyle(
                              color: kprimaryColor,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Avatar(
              text: 'Carregando',
              url:
                  'https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg',
            );
          }
        },
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Resum(
                  resum: resum,
                  title: nome,
                  url: url,
                )));
      },
    );
  }
}
