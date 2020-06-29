import 'package:appHibrido_Letras/screens/home/components/title_with_more_button.dart';
import 'package:flutter/material.dart';


import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size, context),
          TitleWithMoreButton(title: "Recommended", press: (){},),
        ],),
    );
  }


}

