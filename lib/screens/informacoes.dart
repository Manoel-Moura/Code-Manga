import 'package:code_manga/consts/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class InformacoesPage extends StatefulWidget {
  const InformacoesPage({Key? key}) : super(key: key);

  @override
  State<InformacoesPage> createState() => _InformacoesPageState();
}

class _InformacoesPageState extends State<InformacoesPage> {
  Future<void> _launchInBrowser(String url) async {
    if (!await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Não pode executar $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dev",
                      style: GoogleFonts.bebasNeue(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 9),
                      child: Text(
                        "s",
                        style: GoogleFonts.bebasNeue(
                          textStyle: const TextStyle(
                            color: kprimaryColor,
                            fontSize: 60,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  top: 40, right: 20, left: 20, bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              color: Colors.white70,
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/68624464?v=4',
                  ),
                ),
                title: Text(
                  "BrenneZ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                trailing: SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: Image.asset('assets/images/git.png'),
                    onPressed: () => {
                      _launchInBrowser('https://github.com/Brennez/'),
                    },
                  ),
                ),
                subtitle: Text(
                  'tchalissongomes@aluno.uespi.br',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: kprimaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
                bottom: 16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              color: Colors.white70,
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/33962562?v=4',
                  ),
                ),
                title: Text(
                  "Alexandre16347",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                trailing: SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                      icon: Image.asset('assets/images/git.png'),
                      onPressed: () => {
                            _launchInBrowser(
                                'https://github.com/Alexandre16347')
                          }),
                ),
                subtitle: Text(
                  'carlosalexandre@aluno.uespi.br',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: kprimaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
                bottom: 16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              color: Colors.white70,
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/85879611?v=4',
                  ),
                ),
                title: Text(
                  "Manoel-Moura",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                trailing: SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                      icon: Image.asset('assets/images/git.png'),
                      onPressed: () => {
                            _launchInBrowser('https://github.com/Manoel-Moura')
                          }),
                ),
                subtitle: Text(
                  'manoelmoura@aluno.uespi.br',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: kprimaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  top: 20, right: 20, left: 20, bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              color: Colors.white70,
              child: ListTile(
                onTap: () => {
                  _launchInBrowser(
                      'https://docs.api.jikan.moe/#section/Information')
                },
                leading: const Icon(
                  Icons.api_outlined,
                  color: kprimaryColor,
                  size: 40,
                ),
                title: Text(
                  "API Utilizada",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                trailing: const Icon(
                  Icons.api_outlined,
                  color: kprimaryColor,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
