import 'package:flutter/material.dart';
import 'package:code_manga/consts/colors/colors.dart';

class Input extends StatelessWidget {
  final IconData icone;
  final String texto;
  final bool password;

  const Input(
      {Key? key,
      required this.icone,
      required this.texto,
      required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      // cursorColor: Colors.black,

      obscureText: password,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20), //Largura do TextFild
        filled: true,
        fillColor: Colors.grey.shade300, //Cor do TextFild
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: kBackgroundColor,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: kprimaryColor,
            width: 2.0,
          ),
        ),
        prefixIcon: Icon(
          icone,
          color: kIcon,
        ),
        hintText: texto,
        hintStyle: TextStyle(
          color: kIcon,
        ),
      ),
    );
  }
}
