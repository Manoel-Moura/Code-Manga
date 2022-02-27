import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/navHomePage.dart';
import 'package:code_manga/widgets/cabecalho.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resume extends StatelessWidget {
  const Resume(
      {Key? key,
      required this.url,
      required this.title,
      required this.resume,
      required this.nCapitulo,
      required this.nVolumes,
      required this.ranking})
      : super(key: key);

  final String url;
  final String title;
  final String resume;
  final String nCapitulo;
  final String nVolumes;
  final String ranking;

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
              Container(
                margin: const EdgeInsets.only(
                  top: 40,
                  bottom: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 173,
                      height: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(url),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: [
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 16,
                            ),
                            child: Text(
                              title,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 11,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Capítulos: ",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  nCapitulo == 'null'
                                      ? 'unavailable'
                                      : nCapitulo,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 11,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Volumes: ",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 17,
                                ),
                                child: Text(
                                  nVolumes == 'null' ? 'unavailable' : nVolumes,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 11,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Ranking: ",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 23,
                                ),
                                child: Text(
                                  ranking == 'null' ? 'unavailable' : ranking,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resume',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.all(
                      18,
                    ),
                    child: Text(
                      resume,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
