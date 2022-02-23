import 'package:code_manga/API/repositoryUnity.dart';
import 'package:code_manga/screens/navHomePage.dart';
import 'package:flutter/material.dart';
// import 'package:code_manga/API/repository.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

Future main() async {
  //print('O link de q preciso eh ${await getImageManga(2)}');
  // final json = await fetch();
  // print(json['url']);
  runApp(const MyApp());
}

// Future<Map> fetch() async {
//   const String baseUrl = ('https://api.jikan.moe/v4/manga/10');
//   var response = await http.get(Uri.parse(baseUrl));
//   var json = jsonDecode(response.body);
//   return json;
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryUnity repo = RepositoryUnity();
    return Provider(
      create: (context) => repo,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),
        home: const CodeManga(),
      ),
    );
  }
}

class CodeManga extends StatefulWidget {
  const CodeManga({Key? key}) : super(key: key);

  @override
  _CodeMangaState createState() => _CodeMangaState();
}

class _CodeMangaState extends State<CodeManga> {
  @override
  Widget build(BuildContext context) {
    //return cadastro();
    //return loginPage();
    //return Resum();
    //return HomePage();
    return const NavHome();
  }
}
