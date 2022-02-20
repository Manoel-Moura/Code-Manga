import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/screens/homePage.dart';
import 'package:code_manga/screens/loginPage.dart';
import 'package:code_manga/screens/resum.dart';
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
    void dispose() {
      super.dispose();
      pageViewController.dispose();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageViewController,
        children: [HomePage(), cadastro(), loginPage()],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              fixedColor: KText,
              unselectedItemColor: kprimaryColor,
              backgroundColor: Color.fromRGBO(31, 31, 31, 0.9),
              currentIndex: pageViewController?.page?.round() ?? 0,
              onTap: (index) {
                pageViewController.jumpToPage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Perfil'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.info_outline),
                  title: Text('Informações'),
                ),
              ],
            );
          }),
    );
  }
}
