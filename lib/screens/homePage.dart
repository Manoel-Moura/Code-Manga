// ignore_for_file: file_names

import 'dart:io';
import 'dart:ui';

import 'package:code_manga/API/repositoryList.dart';
import 'package:code_manga/API/listaMangaApiModel.dart';
// import 'package:code_manga/API/mangaModel.dart';
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
    // RepositoryList r = Provider.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage()));
            },
            icon: Icon(
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
          title: Cabecalho(),
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
                future: recuperaMangas(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Data> mangas = snapshot.data as List<Data>;
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
                future: recuperaMangas(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Data> mangas = snapshot.data as List<Data>;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: mangas
                            .map(
                              (e) => Avatar(
                                text: '${e.title}',
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
              FutureBuilder(
                future: recuperaMangas(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Data> mangas = snapshot.data as List<Data>;
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
