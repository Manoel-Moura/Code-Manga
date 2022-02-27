// ignore_for_file: file_names
import 'package:code_manga/API/repositoryList.dart';
import 'package:code_manga/API/listaMangaApiModel.dart' as lmam;
import 'package:code_manga/API/repositoryUnity.dart';
import 'package:code_manga/API/mangaApiModel.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/loginPage.dart';
import 'package:code_manga/widgets/avatar.dart';
import 'package:code_manga/widgets/cabecalho.dart';
import 'package:code_manga/widgets/destaque.dart';
import 'dart:math';
import 'package:code_manga/widgets/manga.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<String>? title = [];
List<String>? url = [];
List<int>? mangasDestaque = [
  13,
  104565,
  23390,
  12,
  21,
  30859,
  44347,
  96792,
  11,
  86337,
  116778,
  75989,
];
Random random = Random();
int randomNumber = random.nextInt(12);
int genero = 5;

class _HomePageState extends State<HomePage> {
  void novCategoria(int valor) async {
    setState(() {
      genero = valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    RepositoryList r = Provider.of(context);
    RepositoryUnity ru = Provider.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context) => const LoginPage()));
          //   },
          //   icon: const Icon(
          //     Icons.arrow_back,
          //     color: kText,
          //   ),
          // ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[kAppBar, kAppBar2]),
            ),
          ),
          title: Cabecalho(),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                margin: EdgeInsets.all(
                  10,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 20,
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    hintText: 'Pesquisar...',
                    hintStyle: GoogleFonts.poppins(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 10,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  cursorColor: Colors.white,
                ),
              ),

              FutureBuilder(
                future: ru.buscaUmMangaId(mangasDestaque![randomNumber]),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    MangaApiModel manga = snapshot.data as MangaApiModel;
                    randomNumber = random.nextInt(12);
                    return Destaque(
                      title: '${manga.data!.title}',
                      url: '${manga.data!.images!.jpg!.imageUrl}',
                      resume: '${manga.data!.synopsis}',
                      nCapitulo: '${manga.data!.chapters}',
                      nVolumes: '${manga.data!.volumes}',
                      ranking: '${manga.data!.rank}',
                    );
                  }
                  return const CircularProgressIndicator(
                    color: kprimaryColor,
                  );
                },
              ),
              //  CategoriaOP(),
              FutureBuilder(
                future: ru.recuperaMangas([
                  13,
                  113138,
                  104565,
                  23390,
                  12,
                  21,
                  30859,
                  44347,
                  96792,
                  11,
                  86337,
                  116778,
                  75989,
                  /**/
                ]),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<MangaApiModel> mangas =
                        snapshot.data as List<MangaApiModel>;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: mangas
                            .map(
                              (e) => Avatar(
                                text: '${e.data!.title}',
                                url: '${e.data!.images!.jpg!.imageUrl}',
                                resume: '${e.data!.synopsis}',
                                nCapitulo: '${e.data!.chapters}',
                                nVolumes: '${e.data!.volumes}',
                                ranking: '${e.data!.rank}',
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }
                  return const CircularProgressIndicator(
                    color: kprimaryColor,
                  );
                },
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        novCategoria(1);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Action',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(2);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Adventure',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(8);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Drama',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(10);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Fantasy',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(14);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Horror',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(37);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Supernatural',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(4);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Comedy',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(9);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Harem',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(35);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Ecchi',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(49);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Erotico',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(12);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          '+18',
                          style: const TextStyle(
                            color: kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              FutureBuilder(
                future: r.recuperaMangasPorGenero(genero),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<lmam.Data> mangas = snapshot.data as List<lmam.Data>;
                    if (mangas.isNotEmpty) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: mangas
                              .map(
                                (e) => Manga(
                                  title: '${e.title}',
                                  url: '${e.images!.jpg!.imageUrl}',
                                  resume: '${e.synopsis}',
                                  nCapitulo: '${e.chapters}',
                                  nVolumes: '${e.volumes}',
                                  ranking: '${e.rank}',
                                ),
                              )
                              .toList(),
                        ),
                      );
                    } else if (mangas.isEmpty) {
                      return Center(
                        child: Text(
                          'Não foi encontrado',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      );
                    }
                  }
                  return Center(
                    child: const CircularProgressIndicator(
                      color: kprimaryColor,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
