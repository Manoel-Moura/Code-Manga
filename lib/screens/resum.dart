import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/navHomePage.dart';

import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  final String url;
  final String title;
  final String resume;

  const Resume(
      {Key? key, required this.url, required this.title, required this.resume})
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
                  colors: <Color>[kAppBar, kAppBar2]),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const NavHome()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kText,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 4.0),
                child: const Text(
                  'Manga',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'BebasNeue',
                      fontSize: 25.0),
                ),
              ),
              const Text(
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
                  'Resume\n',
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
