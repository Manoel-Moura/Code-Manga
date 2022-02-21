// ignore_for_file: file_names

import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/screens/LoginPage.dart';
import 'package:flutter/material.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController();

    @override
    // ignore: unused_element
    void dispose() {
      super.dispose();
      pageViewController.dispose();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageViewController,
        children: const [
          HomePage(),
          Cadastro(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            fixedColor: kText,
            unselectedItemColor: kprimaryColor,
            backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
            currentIndex: pageViewController.page?.round() ?? 0,
            onTap: (index) {
              pageViewController.jumpToPage(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfil',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info_outline),
                label: 'Informações',
              ),
            ],
          );
        },
      ),
    );
  }
}
