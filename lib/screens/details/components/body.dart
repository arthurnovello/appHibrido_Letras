import 'package:appHibrido_Letras/screens/details/components/header_with_title.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithTitle(
            size: size,
            band: "Band",
            music: "Music",
            image: "assets/images/logo.png",
          ),
        ],
      ),
    );
  }
}
