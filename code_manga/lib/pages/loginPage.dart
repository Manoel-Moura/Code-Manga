import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  var primaryColor = 0XFFE50913;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 56),
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
                        color: Color(primaryColor),
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
                  fontSize: 40,
                  color: const Color(0XFFE9ECEE),
                ),
              ),
            ),
          ],
        ));
  }
}
