// ignore_for_file: file_names
import 'package:code_manga/API/mangaModel.dart';
import 'package:code_manga/API/repository.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/LoginPage.dart';
import 'package:code_manga/widgets/avatar.dart';
import 'package:code_manga/widgets/destaque.dart';
import 'package:code_manga/widgets/manga.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Repository r = Provider.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            icon: const Icon(
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: kText,
                  size: 26.0,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const Destaque(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25, top: 25),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FutureBuilder(
                            future: r.getManga(8),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                MangaApiModel manga =
                                    snapshot.data as MangaApiModel;
                                return Avatar(
                                  text: '${manga.data!.title}',
                                  url: manga.data!.images!.jpg!.imageUrl ??
                                      'https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg',
                                );
                              } else {
                                return const Avatar(
                                  text: 'Carregando',
                                  url:
                                      'https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg',
                                );
                              }
                            },
                          ),
                          const Avatar(
                            text: 'Naruto',
                            url:
                                'https://img.quizur.com/f/img61363627de6453.89709140.jpg?lastEdited=1630942763',
                          ),
                          // Avatar(
                          //   text: 'Bleach',
                          //   url:
                          //       'https://sucodemanga.com.br/wp-content/uploads/2020/03/bleach.jpg',
                          // ),
                          // Avatar(
                          //   text: 'Re:Zero',
                          //   url:
                          //       'https://img.elo7.com.br/product/original/1EE36C0/big-poster-anime-re-zero-tamanho-90x-0-cm-lo003-poster.jpg',
                          // ),
                          // Avatar(
                          //     text: 'Jujutsu',
                          //     url:
                          //         'https://trecobox.com.br/wp-content/uploads/2020/09/jujutsu-kaisen-thumb.jpg')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Manga(
                      url:
                          'https://i0.wp.com/blogbbm.com/wp-content/uploads/2020/02/20200227_052402-e1582796582758.jpg?resize=300%2C464&ssl=1',
                    ),
                    // Manga(
                    //   url:
                    //       'https://images-na.ssl-images-amazon.com/images/I/51QOd2372JL.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://i0.wp.com/anmtv.com.br/wp-content/uploads/one-piece-volume-100.jpg?resize=256%2C400&ssl=1',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://cupulatrovao.com.br/wp-content/uploads/2019/11/Vinland-Saga-mang%C3%A1-capa.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://images-na.ssl-images-amazon.com/images/I/91pllXbnH1L.jpg',
                    // ),
                    // Manga(
                    //     url:
                    //         'https://www.jbchost.com.br/editorajbc/wp-content/uploads/2018/03/FairyTail-63-Capa_p.jpg'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Manga(
                      url:
                          'https://images-na.ssl-images-amazon.com/images/I/71cZe3b5sjL.jpg',
                    ),
                    // Manga(
                    //   url:
                    //       'https://ptanime.com/wp-content/uploads/2020/05/Chainsaw_Man_volume-_1_capa_cover_shueisha.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://m.media-amazon.com/images/I/51poFfdKFEL.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://cupulatrovao.com.br/wp-content/uploads/2019/11/Vinland-Saga-mang%C3%A1-capa.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://images-na.ssl-images-amazon.com/images/I/91pllXbnH1L.jpg',
                    // ),
                    // Manga(
                    //     url:
                    //         'https://www.jbchost.com.br/editorajbc/wp-content/uploads/2018/03/FairyTail-63-Capa_p.jpg'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Manga(
                      url:
                          'https://cdn.awsli.com.br/600x450/1777/1777555/produto/110955488f5b7abc474.jpg',
                    ),
                    // Manga(
                    //   url:
                    //       'https://images-na.ssl-images-amazon.com/images/I/816m3mfx21L.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://cidadedepapel.com.br/wp-content/uploads/2021/06/248868_520x5201.jpg',
                    // ),
                    // Manga(
                    //   url: 'https://pbs.twimg.com/media/Et0OEmzXAAAFw55.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://a-static.mlcdn.com.br/1500x1500/manga-jujutsu-kaisen-batalha-de-feiticeiros-edicao-8-panini/ebancas/d3c647e801eb11ec97d14201ac185013/a39feaca111aa4b7178631adc11d1d4d.jpg',
                    // ),
                    // Manga(
                    //   url:
                    //       'https://i0.wp.com/www.otakupt.com/wp-content/uploads/2020/12/Jujutsu-Kaisen-colume-14-cover.jpg?resize=696%2C1092&ssl=1',
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
