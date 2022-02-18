import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/widgets/categoria.dart';
import 'package:code_manga/widgets/avatar.dart';
import 'package:code_manga/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';

class Destaque extends StatefulWidget {
  const Destaque({Key? key}) : super(key: key);

  @override
  _DestaqueState createState() => _DestaqueState();
}

class _DestaqueState extends State<Destaque> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.height) / 2,
      child: Stack(
        children: [
          Image.network(
            // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA5JASbQIhzPAjLM6cdsUy98zF7pCLEZ0zIg&usqp=CAU",
            "https://images-na.ssl-images-amazon.com/images/I/51zXJBloNpL._SX331_BO1,204,203,200_.jpg",
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Manga',
                    style: TextStyle(
                        color: KText,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'JUJUTSU\n  KAISEN',
                  style: TextStyle(
                      color: KText,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Categoria(text: 'Sombrio'),
                  Categoria(text: 'Mistério'),
                  Categoria(text: 'Espirituoso'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
