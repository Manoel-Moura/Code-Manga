import 'package:dio/dio.dart';
import 'package:code_manga/API/mangaApiModel.dart';

final String baseUrl = 'https://api.jikan.moe';
final String endpoint = '/v4/manga/';

class RepositoryUnity {
  Future<MangaApiModel> buscaUmMangaId(int id) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    dynamic resposta;

    try {
      resposta = await dio.get(endpoint + "$id");
    } catch (e) {
      resposta = await dio.get(endpoint + '${113138}');
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

  List<int> mangasId = [
    13,
    12,
    2,
    11 /**/
  ];
  Future<List<MangaApiModel>> recuperaMangas() async {
    List<MangaApiModel> mangas = [];
    for (int id in mangasId) {
      mangas.add(await buscaUmMangaId(id));
    }

    return mangas;
  }
}
