import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/widgets/categoria.dart';

import 'package:flutter/material.dart';

class Resum extends StatelessWidget {
  const Resum({Key? key}) : super(key: key);

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
                  url:
                      "https://images-na.ssl-images-amazon.com/images/I/51zXJBloNpL._SX331_BO1,204,203,200_.jpg",
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Um Mangá da hora!',
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
  //List<String> generos = ['Sombrio', 'Misterio', 'Espiritismo'];

  const ResumDestaque({Key? key, required this.url}) : super(key: key);

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
                  'JUJUTSU\n  KAISEN',
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
