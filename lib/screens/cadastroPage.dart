// ignore_for_file: file_names
import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/model/user.dart';
import 'package:code_manga/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senha1 = TextEditingController();
  TextEditingController senha2 = TextEditingController();

  List<User> usuarios = [];

  fazCadastro(nome, idade, email, senha) {
    User usuario = User(nome, senha, email, idade);
    usuarios.add(usuario);
  }

  imprimeLista() {
    usuarios.forEach((element) {
      print(element);
    });
  }

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
                margin: const EdgeInsets.only(bottom: 25, top: 56),
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
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Input(
                        myController: nomeController,
                        icone: Icons.person,
                        texto: "Digite seu nome",
                        password: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Input(
                        myController: idadeController,
                        icone: Icons.person,
                        texto: "Digite sua idade",
                        password: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Input(
                        myController: emailController,
                        icone: Icons.email_rounded,
                        texto: "Digite seu email",
                        password: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Input(
                        myController: senha1,
                        icone: Icons.lock,
                        texto: "Digite sua senha",
                        password: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Input(
                        myController: senha2,
                        icone: Icons.lock,
                        texto: "Confirme sua senha",
                        password: true,
                      ),
                    ),
                    Button(
                      onPressed: () {
                        fazCadastro(nomeController.text, idadeController.text,
                            emailController.text, senha1.value);
                        imprimeLista();
                        // print(nomeController.text);
                      },
                      text: 'Criar conta',
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
