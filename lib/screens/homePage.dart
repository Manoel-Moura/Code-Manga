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
import 'package:code_manga/widgets/destaque.dart';
// import 'package:code_manga/widgets/input.dart';
import 'package:code_manga/widgets/manga.dart';
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
        backgroundColor: Color.fromRGBO(31, 31, 31, 0.9),
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
          title: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 4.0),
                child: Text(
                  'Manga',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'BebasNeue',
                      fontSize: 25.0),
                ),
              ),
              Text(
                'Code',
                style: TextStyle(
                    color: kprimaryColor,
                    fontFamily: 'BebasNeue',
                    fontSize: 25.0),
              ),
            ],
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 35.0),
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
        body: Column(
          children: [
            Destaque(),
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
                                url: '${e.images!.jpg!.imageUrl}'),
                          )
                          .toList(),
                    ),
                  );

                  // return ListView.builder(
                  //   //shrinkWrap: true,
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: mangas.length,
                  //   itemBuilder: (_, index) {
                  //     Data manga = mangas[index];
                  //     return Avatar(
                  //       text: '${manga.title}',
                  //       url: '${manga.images!.jpg!.imageUrl}',
                  //     );
                  //   }, // itemBuilder
                  // );
                }
                return CircularProgressIndicator(
                  color: Colors.red,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
