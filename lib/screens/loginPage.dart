// ignore_for_file: file_names
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 56, top: 56),
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
                  "Login",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: kText,
                  ),
                ),
              ),
              Container(
                // margin: const EdgeInsets.only(left: 29, right: 29),
                margin:
                    const EdgeInsets.symmetric(vertical: 29, horizontal: 29),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Input(
                        myController: emailController,
                        icone: Icons.email_rounded,
                        texto: "Digite seu email",
                        password: false,
                      ),
                    ),
                    Input(
                      myController: senhaController,
                      icone: Icons.lock,
                      texto: "Digite sua senha",
                      password: true,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 29, bottom: 29),
                      child: Button(
                        onPressed: () {},
                        text: 'Entrar',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Ainda não possui conta?',
                          style: TextStyle(color: kText),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Cadastro(),
                              ),
                            );
                          },
                          child: const Text(
                            'Cadastra-se',
                            style: TextStyle(color: kprimaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
