// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:code_manga/API/mangaApiModel.dart';

class RepositoryUnity {
  final String baseUrl = 'https://api.jikan.moe';
  final String endpoint = '/v4/manga/';

  Future<MangaApiModel> buscaUmMangaId(int id) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    dynamic resposta;

    try {
      await Future.delayed(const Duration(seconds: 2), () async {
        resposta = await dio.get(endpoint + "$id");
      });
    } catch (e) {
      await Future.delayed(const Duration(seconds: 2), () async {
        resposta = await dio.get(endpoint + '${113138}');
      });
    }

    if (resposta.statusCode == 200) {
      return MangaApiModel.fromJson(resposta.data);
    }

    return MangaApiModel();
  }

// Future getManga(int id) async {
//   try {
//     MangaApiModel manga = await buscaUmMangaId(id);
//     return manga;
//     // ignore: non_constant_identifier_names
//   } catch (Exc) {
//     // ignore: avoid_print
//     print(Exc);
//     rethrow;
//   }
// }

// Future getImageManga(int id) async {
//   MangaApiModel manga = await buscaUmMangaId(id);
//   // print('${manga.data!.images!.jpg!.largeImageUrl}');
//   return '${manga.data!.images!.jpg!.largeImageUrl}';
// }

  // List<int> mangasId = [
  //   13,
  //   12,
  //   2,
  //   11,
  //   14,
  //   15,
  //   16,
  //   10,
  //   113138 /**/
  // ];
  Future<List<MangaApiModel>> recuperaMangas(List<int> mangasId) async {
    List<MangaApiModel> mangas = [];
    for (int id in mangasId) {
      mangas.add(await buscaUmMangaId(id));
    }

    return mangas;
  }

//   List<int> mangasIds = [
//     13,
//     12,
//     113138,
//     11,
//     2,
//     14,
//     15,
//     16,
//     10,
//     1,
//     2,
//     3,
//     4,
//     123,
//     124,
//     1111
//     /**/
//   ];

//   Future<List<MangaApiModel>> listandoMangas() async {
//     List<MangaApiModel> mangas = [];
//     for (int id in mangasIds) {
//       mangas.add(await buscaUmMangaId(id));
//     }

//     return mangas;
//   }
}
