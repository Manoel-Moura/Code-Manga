// import 'dart:html';

import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';

class cadastro extends StatefulWidget {
  const cadastro({Key? key}) : super(key: key);

  @override
  _cadastroState createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "MANGA",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 37,
                      ),
                    ),
                    Text(
                      "Code",
                      style: GoogleFonts.notoSans(
                        color: kprimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 68,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 29),
              child: Text(
                "Cadrastro",
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: KText,
                ),
              ),
            ),
            Container(
              // margin: const EdgeInsets.only(left: 29, right: 29),
              margin: EdgeInsets.symmetric(vertical: 29, horizontal: 29),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Input(
                      icone: Icons.person,
                      texto: "Digite seu nome",
                      password: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Input(
                      icone: Icons.person,
                      texto: "Digite sua idade",
                      password: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Input(
                      icone: Icons.email_rounded,
                      texto: "Digite seu email",
                      password: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Input(
                      icone: Icons.lock,
                      texto: "Digite sua senha",
                      password: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Input(
                      icone: Icons.lock,
                      texto: "Confirme sua senha",
                      password: true,
                    ),
                  ),
                  Button(
                    text: 'Criar conta',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
