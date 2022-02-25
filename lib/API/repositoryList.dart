// ignore_for_file: file_names, unused_local_variable
// import 'package:code_manga/API/modelo.dart';
// import 'package:code_manga/API/repository.dart';
import 'package:dio/dio.dart';
// import 'package:code_manga/API/mangaApiModel.dart';
import 'package:code_manga/API/listaMangaApiModel.dart';
// import 'package:path/path.dart';
// import 'package:provider/provider.dart';

class RepositoryList {
  final String baseUrl = 'https://api.jikan.moe';
  final String endpoint = '/v4/manga';
  final String endpointType = '/v4/manga?type=';
  final String endpointGenres = '/v4/manga?genres=';
  final int time = 35;

  /// Buscando 25 mangas da API

  Future<ListaMangaApiModel> buscaListaDeMangas() async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    // ignore: prefer_typing_uninitialized_variables
    var resposta;
    await Future.delayed(Duration(seconds: time), () async {
      resposta = await dio.get(endpoint);
    });

    if (resposta.statusCode == 200) {
      return ListaMangaApiModel.fromJson(resposta.data);
    }
    return ListaMangaApiModel();
  }

  Future<List<Data>?> recuperaMangas() async {
    List<Data>? listaDeMangas = [];

    ListaMangaApiModel lista = await buscaListaDeMangas();

    listaDeMangas = lista.data!.getRange(0, 25).toList();

    return listaDeMangas;
  }

  /// Buscando Por Tipo
  /// Manhwa - 'manhwa'

  Future<ListaMangaApiModel> buscaListaDeMangasPorTipo(String type) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    // ignore: prefer_typing_uninitialized_variables
    var resposta;
    await Future.delayed(Duration(seconds: time), () async {
      resposta = await dio.get(endpointType + '${type}');
    });

    if (resposta.statusCode == 200) {
      return ListaMangaApiModel.fromJson(resposta.data);
    }
    return ListaMangaApiModel();
  }

  Future<List<Data>?> recuperaMangasManhwa() async {
    List<Data>? listaDeMangasManhwa = [];
    ListaMangaApiModel lista = await buscaListaDeMangasPorTipo('manhwa');
    int tam = lista.data!.length;

    listaDeMangasManhwa = lista.data!.getRange(0, tam).toList();

    return listaDeMangasManhwa;
  }

  /// Buscando Por Generos
  /// 12 - hentai
  /// 9 - ecchi
  /// 35 - Harem
  Future<ListaMangaApiModel> buscaListaDeMangasPorGenero(int genres) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    // ignore: prefer_typing_uninitialized_variables
    var resposta;
    await Future.delayed(Duration(seconds: time), () async {
      resposta = await dio.get(endpointGenres + '${genres}');
    });

    if (resposta.statusCode == 200) {
      return ListaMangaApiModel.fromJson(resposta.data);
    }
    return ListaMangaApiModel();
  }

  Future<List<Data>?> recuperaMangasHentai() async {
    List<Data>? listaDeMangasHentai = [];
    ListaMangaApiModel lista = await buscaListaDeMangasPorGenero(12);
    int tam = lista.data!.length;

    listaDeMangasHentai = lista.data!.getRange(0, tam).toList();

    return listaDeMangasHentai;
  }

  Future<List<Data>?> recuperaMangasEcchi() async {
    List<Data>? listaDeMangasEcchi = [];
    ListaMangaApiModel lista = await buscaListaDeMangasPorGenero(9);
    int tam = lista.data!.length;

    listaDeMangasEcchi = lista.data!.getRange(0, tam).toList();

    return listaDeMangasEcchi;
  }

  /// Buscando Mangas Por Nome

  Future<ListaMangaApiModel> buscaListaMangasPorNome(String name) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    name = name.replaceAll(' ', '+');

    await Future.delayed(Duration(seconds: time), () async {
      resposta = await dio.get(endpoint + '?q=$name');
    });

    if (resposta.statusCode == 200) {
      return ListaMangaApiModel.fromJson(resposta.data);
    }
    return ListaMangaApiModel();
  }

  Future<List<Data>?> recuperaMangasOnePiece() async {
    List<Data>? listaDeMangasOnePiece = [];
    ListaMangaApiModel lista = await buscaListaMangasPorNome('One Piece');
    int tam = lista.data!.length;

    listaDeMangasOnePiece = lista.data!.getRange(0, tam).toList();

    return listaDeMangasOnePiece;
  }
}
