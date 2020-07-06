import 'package:appHibrido_Letras/constants.dart';
import 'package:flutter/material.dart';

class Lyrics extends StatelessWidget {
  const Lyrics({
    Key key,
    @required this.size, this.lyrics,
}) : super(key:key);
  
  final Size size;
  final String lyrics;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      child: Text( lyrics,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: "Roboto",
      ),
      ),
    );
  }
}
