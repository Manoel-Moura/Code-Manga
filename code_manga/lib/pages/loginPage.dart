import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
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
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 68,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
