import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/widgets/cabecalho.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Cabecalho(),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(
                bottom: 30,
                top: 50,
              ),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/doguinho.jpg'),
                  ),
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              )),
          Text(
            'Brenne Santos',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Text(
            'I like to drink coffee sometimes',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                color: kprimaryColor,
                fontSize: 16,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(
              top: 40,
              right: 20,
              left: 20,
              bottom: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 20,
            color: Colors.white70,
            child: ListTile(
              leading: const Icon(
                Icons.phone_android_outlined,
                //Icons.adb_outlined,
                color: Colors.black54,
                size: 30,
              ),
              title: Text(
                "(86) 94002-8922",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
              ),
              trailing: const Icon(
                Icons.mode_edit_outlined,
                color: Colors.black54,
                size: 30,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 20,
            color: Colors.white70,
            child: ListTile(
              leading: const Icon(
                Icons.mail_outline,
                color: Colors.black54,
                size: 30,
              ),
              title: Text(
                "brenneDev@gmail.com",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
              ),
              trailing: const Icon(
                Icons.mode_edit_outlined,
                color: Colors.black54,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
