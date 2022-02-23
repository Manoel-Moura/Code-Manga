import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/navHomePage.dart';
import 'package:code_manga/widgets/cabecalho.dart';

import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume(
      {Key? key, required this.url, required this.title, required this.resume})
      : super(key: key);

  final String url;
  final String title;
  final String resume;

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
                  colors: <Color>[kAppBar, kAppBar2]),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const NavHome()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kText,
            ),
          ),
          title: const Cabecalho(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height) / 1.5,
                child: Image.network(
                  url,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: kprimaryColor,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  'Resumo\n',
                  style: TextStyle(color: kText, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  resume,
                  style: const TextStyle(color: kText, fontSize: 18),
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
