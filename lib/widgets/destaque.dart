import 'package:code_manga/API/mangaApiModel.dart';
import 'package:code_manga/API/repositoryUnity.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/resum.dart';
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Destaque extends StatefulWidget {
  const Destaque({Key? key}) : super(key: key);

  @override
  _DestaqueState createState() => _DestaqueState();
}

class _DestaqueState extends State<Destaque> {
  @override
  Widget build(BuildContext context) {
    // RepositoryList rl = Provider.of(context);
    RepositoryUnity rId = Provider.of(context);
    var nome;
    var url;
    var resume;
    Random random = Random();
    int randomNumber = random.nextInt(119668);

    return GestureDetector(
      child: FutureBuilder(
        future: rId.buscaUmMangaId(randomNumber),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            MangaApiModel manga = snapshot.data as MangaApiModel;
            nome = '${manga.data!.title}';
            url = '${manga.data!.images!.jpg!.imageUrl}';
            resume = '${manga.data!.synopsis}';
            return SizedBox(
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
                      const Center(
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
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          '${manga.data!.title}',
                          style: const TextStyle(
                              color: kprimaryColor,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height) / 2.5,
              child: Stack(
                children: [
                  Image.network(
                      'https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg'),
                  const Center(
                    child: Text(
                      'Carregando...',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: kText, fontSize: 25),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
      onTap: () {
        if (nome != null) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Resume(
                resume: resume,
                title: nome,
                url: url,
              ),
            ),
          );
        }
      },
    );
  }
}
