import 'package:code_manga/API/repositoryList.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/widgets/cabecalho.dart';
import 'package:code_manga/widgets/manga.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:code_manga/API/listaMangaApiModel.dart' as lmam;

class ResultadosPage extends StatelessWidget {
  const ResultadosPage({Key? key, required this.busca}) : super(key: key);

  final TextEditingController busca;

  @override
  Widget build(BuildContext context) {
    RepositoryList r = Provider.of(context);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Cabecalho(),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Resultados",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
          ),
          FutureBuilder(
            future: r.recuperaMangasPorNome(busca.text),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<lmam.Data> mangas = snapshot.data as List<lmam.Data>;
                if (mangas.isNotEmpty) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: mangas
                          .map(
                            (e) => Manga(
                              title: '${e.title}',
                              url: '${e.images!.jpg!.imageUrl}',
                              resume: '${e.synopsis}',
                              nCapitulo: '${e.chapters}',
                              nVolumes: '${e.volumes}',
                              ranking: '${e.rank}',
                            ),
                          )
                          .toList(),
                    ),
                  );
                } else if (mangas.isEmpty) {
                  return const Center(
                    child: Text(
                      'Não encontramos o seu manga :/',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  );
                }
              }
              return const Center(
                child: CircularProgressIndicator(
                  color: kprimaryColor,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
