import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/widgets/categoria.dart';

import 'package:flutter/material.dart';

class Resum extends StatelessWidget {
  final String url;
  final String title;
  final String resum;

  const Resum(
      {Key? key, required this.url, required this.title, required this.resum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[KAppBar, KAppBar2]),
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: KText,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ResumDestaque(
                  url: url,
                  titulo: title,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    resum,
                    style: TextStyle(color: KText, fontSize: 24),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class ResumDestaque extends StatelessWidget {
  final String url;
  final String titulo;
  //List<String> generos = ['Sombrio', 'Misterio', 'Espiritismo'];

  const ResumDestaque({Key? key, required this.url, required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.height) / 1.5,
      child: Stack(
        children: [
          Image.network(
            url,
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  titulo,
                  style: TextStyle(
                      color: kprimaryColor,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Categoria(text: 'Sombrio'),
                  Categoria(text: 'Mistério'),
                  Categoria(text: 'Espirituoso'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
