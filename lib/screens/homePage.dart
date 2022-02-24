// ignore_for_file: file_names

// import 'dart:io';
import 'dart:ui';

import 'package:code_manga/API/repositoryList.dart';
import 'package:code_manga/API/listaMangaApiModel.dart' as lmam;
import 'package:code_manga/API/repositoryUnity.dart';
import 'package:code_manga/API/mangaApiModel.dart';
// import 'package:code_manga/API/repository.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/loginPage.dart';
import 'package:code_manga/widgets/avatar.dart';
import 'package:code_manga/widgets/cabecalho.dart';
import 'package:code_manga/widgets/destaque.dart';
// import 'package:code_manga/widgets/input.dart';
import 'package:code_manga/widgets/manga.dart';
import 'package:flutter/cupertino.dart';
// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:code_manga/widgets/button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<String>? title = [];
List<String>? url = [];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    RepositoryList r = Provider.of(context);
    RepositoryUnity ru = Provider.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kText,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[kAppBar, kAppBar2]),
            ),
          ),
          title: const Cabecalho(),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: GestureDetector(
                  onTap: () {},
                  // ignore: prefer_const_constructors
                  child: Icon(
                    Icons.search,
                    color: kText,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder(
                future: r.recuperaMangas(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<lmam.Data> mangas = snapshot.data as List<lmam.Data>;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: mangas
                            .map(
                              (e) => Destaque(
                                title: '${e.title}',
                                url: '${e.images!.jpg!.imageUrl}',
                                resume: '${e.synopsis}',
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
              //  CategoriaOP(),
              FutureBuilder(
                future: ru.recuperaMangas([
                  13,
                  12,
                  2,
                  11,
                  // 14,
                  // 15,
                  // 16,
                  // 10,
                  113138 /**/
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
              FutureBuilder(
                future: ru.recuperaMangas([
                  // 13,
                  // 12,
                  // 113138,
                  // 11,
                  // 2,
                  14,
                  15,
                  16,
                  10,
                  1,
                  2,
                  3,
                  4,
                  123,
                  124,
                  11117, 657842,
                  9006099,
                  10583224,
                  11271529,
                  10696018,
                  9648911,
                  9024823,
                  9765614,
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
                              (e) => Manga(
                                title: '${e.data!.title}',
                                url: '${e.data!.images!.jpg!.imageUrl}',
                                resume: '${e.data!.synopsis}',
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
              // FutureBuilder(
              //   future: ru.recuperaMangas([
              //     45832,
              //     76612,
              //     62822,
              //     144548,
              //     478188,
              //     80004,
              //     135985,
              //     420597,
              //     83258,
              //     61901,
              //     66331,
              //     89084,
              //     10842,
              //     13633,
              //     37247,
              //     71665,
              //     58287,
              //   ]),
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       List<MangaApiModel> mangas =
              //           snapshot.data as List<MangaApiModel>;
              //       return SingleChildScrollView(
              //         scrollDirection: Axis.horizontal,
              //         child: Row(
              //           children: mangas
              //               .map(
              //                 (e) => Manga(
              //                   title: '${e.data!.title}',
              //                   url: '${e.data!.images!.jpg!.imageUrl}',
              //                   resume: '${e.data!.synopsis}',
              //                 ),
              //               )
              //               .toList(),
              //         ),
              //       );
              //     }
              //     return const CircularProgressIndicator(
              //       color: kprimaryColor,
              //     );
              //   },
              // ),
              FutureBuilder(
                future: r.recuperaMangasManhwa(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<lmam.Data> mangas = snapshot.data as List<lmam.Data>;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: mangas
                            .map(
                              (e) => Manga(
                                title: '${e.title}',
                                url: '${e.images!.jpg!.imageUrl}',
                                resume: '${e.synopsis}',
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
            ],
          ),
        ),
      ),
    );
  }
}

// class CategoriaOP extends StatelessWidget {
//   const CategoriaOP({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60.0,
//       decoration: BoxDecoration(
//           color: Colors.redAccent,
//           // border: Border.all(color: Colors.pink, width: 10),
//           shape: BoxShape.circle),
//       child: Center(
//         child: Text(
//           'All',
//           style: TextStyle(
//             fontSize: 22.0,
//           ),
//         ),
//       ),
//     );
//   }
// }
