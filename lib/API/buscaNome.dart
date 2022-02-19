import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:code_manga/API/mangasNome.dart';

const String baseUrl = 'https://api.jikan.moe';
const String endpoint = '/v4/manga';

Future<MangaApiModel> buscaUmMangaNome(String name) async {
  Dio dio = Dio();
  dio.options.baseUrl = baseUrl;
  var resposta = await dio.get(endpoint + '?q=${name}');

  if (resposta.statusCode == 200) {
    return MangaApiModel.fromJson(resposta.data);
  }
  return MangaApiModel();
}

void printMangas(String name) async {
  MangaApiModel lista = await buscaUmMangaNome(name);
  List<Data> mangas = lista.data as List<Data>;
  mangas.forEach(printManga);
}

void printManga(Data manga) async {
  print('O ${manga.title} esta no rank ${manga.rank}');
}
