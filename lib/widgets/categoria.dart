import 'package:code_manga/API/repositoryList.dart';
import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';
import 'package:provider/provider.dart';

class Categoria extends StatelessWidget {
  final String text;
  const Categoria({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryList r = Provider.of(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(
          color: kText,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
