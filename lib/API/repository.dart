import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:code_manga/API/mangaModel.dart';

class Repository {
  final String baseUrl = 'https://api.jikan.moe';
  final String endpoint = '/v4/manga/';

  Future<MangaApiModel> buscaUmMangaId(int id) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta = await dio.get(endpoint + "${id}");

    if (resposta.statusCode == 200) {
      return MangaApiModel.fromJson(resposta.data);
    }
    return MangaApiModel();
  }

  Future getManga(int id) async {
    try {
      MangaApiModel manga = await buscaUmMangaId(id);
      // print('Meu link ${manga.data!.images!.jpg!.imageUrl}');
      return manga;
    } catch (Exc) {
      print(Exc);
      rethrow;
    }
  }

  // Future getImageManga(int id) async {
  //   MangaApiModel manga = await buscaUmMangaId(id);
  //   // print('${manga.data!.images!.jpg!.largeImageUrl}');
  //   return '${manga.data!.images!.jpg!.largeImageUrl}';
  // }
}
