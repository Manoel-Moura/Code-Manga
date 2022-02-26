import 'package:code_manga/API/repositoryUnity.dart';
import 'package:code_manga/screens/navHomePage.dart';
import 'package:flutter/material.dart';
import 'package:code_manga/API/repositoryList.dart';
import 'package:provider/provider.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<RepositoryUnity>(create: (context) => RepositoryUnity()),
        Provider<RepositoryList>(create: (context) => RepositoryList()),
      ],
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
