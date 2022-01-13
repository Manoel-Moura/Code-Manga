//Inicio de um sonho!
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: CodeManga(),
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
    return Scaffold();
  }
}
