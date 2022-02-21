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
              Container(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height) / 1.5,
                child: Image.network(
                  url,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 35),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kprimaryColor,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  'Resumo\n',
                  style: TextStyle(color: KText, fontSize: 24),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  resum,
                  style: TextStyle(color: KText, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
