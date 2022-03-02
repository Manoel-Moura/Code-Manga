// ignore_for_file: file_names
import 'package:code_manga/API/repositoryList.dart';
import 'package:code_manga/API/listaMangaApiModel.dart' as lmam;
import 'package:code_manga/API/repositoryUnity.dart';
import 'package:code_manga/API/mangaApiModel.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/resultados.dart';
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

TextEditingController buscaController = TextEditingController();

class _HomePageState extends State<HomePage> {
  // troca de generos
  bool isAction = false;
  bool isAdventure = false;
  bool isDrama = false;
  bool isFantasy = false;
  bool isHorror = false;
  bool isSupernatural = false;
  bool isComedy = false;
  bool isHarem = false;
  bool isEcchi = false;
  bool isErotico = false;
  bool is18 = false;

  toggleAction() {
    setState(() {
      if (isAction) {
        isAction = false;
      } else {
        isAction = true;
        isAdventure = false;
        isDrama = false;
        isFantasy = false;
        isSupernatural = false;
        isComedy = false;
        isHarem = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleAdventure() {
    setState(() {
      if (isAdventure) {
        isAdventure = false;
      } else {
        isAdventure = true;
        isAction = false;
        isHorror = false;
        isDrama = false;
        isFantasy = false;
        isSupernatural = false;
        isComedy = false;
        isHarem = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleDrama() {
    setState(() {
      if (isDrama) {
        isDrama = false;
      } else {
        isDrama = true;
        isHorror = false;
        isAdventure = false;
        isAction = false;
        isFantasy = false;
        isSupernatural = false;
        isComedy = false;
        isHarem = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleFantasy() {
    setState(() {
      if (isFantasy) {
        isFantasy = false;
      } else {
        isFantasy = true;
        isHorror = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isSupernatural = false;
        isComedy = false;
        isHarem = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleHorror() {
    setState(() {
      if (isHorror) {
        isHorror = false;
      } else {
        isHorror = true;
        isFantasy = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isSupernatural = false;
        isComedy = false;
        isHarem = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleSupernatural() {
    setState(() {
      if (isSupernatural) {
        isSupernatural = false;
      } else {
        isSupernatural = true;
        isHorror = false;
        isFantasy = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isComedy = false;
        isHarem = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleComedy() {
    setState(() {
      if (isComedy) {
        isComedy = false;
      } else {
        isComedy = true;
        isSupernatural = false;
        isHorror = false;
        isFantasy = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isHarem = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleHarem() {
    setState(() {
      if (isHarem) {
        isHarem = false;
      } else {
        isHarem = true;
        isComedy = false;
        isSupernatural = false;
        isHorror = false;
        isFantasy = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isEcchi = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleEcchi() {
    setState(() {
      if (isEcchi) {
        isEcchi = false;
      } else {
        isEcchi = true;
        isComedy = false;
        isSupernatural = false;
        isHorror = false;
        isFantasy = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isHarem = false;
        isErotico = false;
        is18 = false;
      }
    });
  }

  toggleErotico() {
    setState(() {
      if (isErotico) {
        isErotico = false;
      } else {
        isErotico = true;
        isEcchi = false;
        isComedy = false;
        isSupernatural = false;
        isHorror = false;
        isFantasy = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isHarem = false;
        is18 = false;
      }
    });
  }

  toggle18() {
    setState(() {
      if (is18) {
        is18 = false;
      } else {
        is18 = true;
        isErotico = false;
        isEcchi = false;
        isComedy = false;
        isSupernatural = false;
        isHorror = false;
        isFantasy = false;
        isDrama = false;
        isAdventure = false;
        isAction = false;
        isHarem = false;
      }
    });
  }

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[kAppBar, kAppBar2]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Cabecalho(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              onSubmitted: (value) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ResultadosPage(busca: buscaController),
                                  ),
                                );
                              },
                              controller: buscaController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                filled: true,
                                prefixIcon: const Icon(
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
                        ),
                      ),
                    ],
                  )),

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
                  // 113138,
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
                        toggleAction();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Action',
                          style: TextStyle(
                            color: isAction ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(2);
                        toggleAdventure();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Adventure',
                          style: TextStyle(
                            color: isAdventure ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(8);
                        toggleDrama();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Drama',
                          style: TextStyle(
                            color: isDrama ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(10);
                        toggleFantasy();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Fantasy',
                          style: TextStyle(
                            color: isFantasy ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(14);
                        toggleHorror();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Horror',
                          style: TextStyle(
                            color: isHorror ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(37);
                        toggleSupernatural();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Supernatural',
                          style: TextStyle(
                            color: isSupernatural ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(4);
                        toggleComedy();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Comedy',
                          style: TextStyle(
                            color: isComedy ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(9);
                        toggleHarem();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Harem',
                          style: TextStyle(
                            color: isHarem ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(35);
                        toggleEcchi();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Ecchi',
                          style: TextStyle(
                            color: isEcchi ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(49);
                        toggleErotico();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          'Erotico',
                          style: TextStyle(
                            color: isErotico ? kprimaryColor : kText,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        novCategoria(12);
                        toggle18();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Text(
                          '+18',
                          style: TextStyle(
                            color: is18 ? kprimaryColor : kText,
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
                      return const Center(
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
                  return const Center(
                    child: CircularProgressIndicator(
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
