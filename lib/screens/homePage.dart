import 'dart:ui';

import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/widgets/categoria.dart';
import 'package:code_manga/widgets/avatar.dart';
import 'package:code_manga/widgets/destaque.dart';
import 'package:code_manga/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: KAppBar2,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[KAppBar, KAppBar2]),
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
          actions: [],
        ),
        body: Column(
          children: [
            Destaque(),
            Padding(
              padding: EdgeInsets.only(bottom: 25, top: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Avatar(
                      text: 'One Piece',
                      url:
                          'https://sm.ign.com/ign_br/tv/o/one-piece-/one-piece-2_1xby.jpg',
                    ),
                    Avatar(
                      text: 'Naruto',
                      url:
                          'https://img.quizur.com/f/img61363627de6453.89709140.jpg?lastEdited=1630942763',
                    ),
                    Avatar(
                      text: 'Bleach',
                      url:
                          'https://sucodemanga.com.br/wp-content/uploads/2020/03/bleach.jpg',
                    ),
                    Avatar(
                      text: 'Re:Zero',
                      url:
                          'https://img.elo7.com.br/product/original/1EE36C0/big-poster-anime-re-zero-tamanho-90x-0-cm-lo003-poster.jpg',
                    ),
                    Avatar(
                        text: 'Jujutsu',
                        url:
                            'https://trecobox.com.br/wp-content/uploads/2020/09/jujutsu-kaisen-thumb.jpg')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
