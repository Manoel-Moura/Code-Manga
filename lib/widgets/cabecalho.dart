import 'package:flutter/material.dart';
import '../consts/colors/colors.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 4.0),
          child: const Text(
            'Manga',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'BebasNeue',
              fontSize: 25.0,
            ),
          ),
        ),
        const Text(
          'Code',
          style: TextStyle(
            color: kprimaryColor,
            fontFamily: 'BebasNeue',
            fontSize: 25.0,
          ),
        ),
      ],
    );
  }
}
