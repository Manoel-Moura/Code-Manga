import 'package:code_manga/screens/navHomePage.dart';
import 'package:flutter/material.dart';
import 'package:code_manga/API/repository.dart';
import 'package:provider/provider.dart';

void main() async {
  //print('O link de q preciso eh ${await getImageManga(2)}');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
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
