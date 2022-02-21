import 'package:dio/dio.dart';
import 'package:code_manga/API/mangaModel.dart';

class Repository {
  final String baseUrl = 'https://api.jikan.moe';
  final String endpoint = '/v4/manga/';

  Future<MangaApiModel> buscaUmMangaId(int id) async {
    Dio dio = Dio();

    dio.options.baseUrl = baseUrl;

    dynamic resposta;

    try {
      resposta = await dio.get(endpoint + "$id");
    } catch (e) {
      resposta = await dio.get(endpoint + "${113138}");
    }

    if (resposta.statusCode == 200) {
      return MangaApiModel.fromJson(resposta.data);
    }

    return MangaApiModel();
  }

  Future getManga(int id) async {
    try {
      MangaApiModel manga = await buscaUmMangaId(id);

      return manga;
      // ignore: non_constant_identifier_names
    } catch (Exc) {
      // ignore: avoid_print
      print(Exc);
      rethrow;
    }
  }
}
