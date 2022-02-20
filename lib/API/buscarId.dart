import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:code_manga/API/mangaModel.dart';

const String baseUrl = 'https://api.jikan.moe';
const String endpoint = '/v4/manga/';

Future<MangaApiModel> buscaUmMangaId(int id) async {
  Dio dio = Dio();
  dio.options.baseUrl = baseUrl;
  var resposta = await dio.get(endpoint + ("${id}"));

  if (resposta.statusCode == 200) {
    return MangaApiModel.fromJson(resposta.data);
  }
  return MangaApiModel();
}

void printMangaId(int id) async {
  MangaApiModel manga = await buscaUmMangaId(id);
  print('O ${manga.data!.title} esta no rank ${manga.data!.rank}');
}

Future<MangaApiModel> getManga(int id) async {
  MangaApiModel manga = await buscaUmMangaId(id);
  return manga;
}
