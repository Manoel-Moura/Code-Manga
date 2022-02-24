// ignore_for_file: file_names, unused_local_variable

// import 'package:code_manga/API/modelo.dart';
// import 'package:code_manga/API/repository.dart';
import 'package:dio/dio.dart';
// import 'package:code_manga/API/mangaApiModel.dart';
import 'package:code_manga/API/listaMangaApiModel.dart';
// import 'package:path/path.dart';
// import 'package:provider/provider.dart';

// Future<ListaMangaApiModel> buscaUmMangaNome(String name) async {
//   Dio dio = Dio();
//   dio.options.baseUrl = baseUrl;
//   var resposta = await dio.get(endpoint + '?q=$name');

//   if (resposta.statusCode == 200) {
//     return ListaMangaApiModel.fromJson(resposta.data);
//   }
//   return ListaMangaApiModel();
// }
class RepositoryList {
  final String baseUrl = 'https://api.jikan.moe';
  final String endpoint = '/v4/manga';
  final String endpointManhwa = '/v4/manga?type=manhwa';

  Future<ListaMangaApiModel> buscaListaDeMangas() async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    // ignore: prefer_typing_uninitialized_variables
    var resposta;
    await Future.delayed(const Duration(seconds: 10), () async {
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

  Future<ListaMangaApiModel> buscaListaDeMangasManhwa() async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    // ignore: prefer_typing_uninitialized_variables
    var resposta;
    await Future.delayed(const Duration(seconds: 10), () async {
      resposta = await dio.get(endpointManhwa);
    });

    if (resposta.statusCode == 200) {
      return ListaMangaApiModel.fromJson(resposta.data);
    }
    return ListaMangaApiModel();
  }

  Future<List<Data>?> recuperaMangasManhwa() async {
    List<Data>? listaDeMangasManhwa = [];
    ListaMangaApiModel lista = await buscaListaDeMangasManhwa();
    int tam = lista.data!.length;

    listaDeMangasManhwa = lista.data!.getRange(0, tam).toList();

    return listaDeMangasManhwa;
  }
}
