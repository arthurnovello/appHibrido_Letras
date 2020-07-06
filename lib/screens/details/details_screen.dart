import 'package:appHibrido_Letras/constants.dart';
import 'package:appHibrido_Letras/screens/details/components/body.dart';
import 'package:appHibrido_Letras/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.search),
        backgroundColor: kPrimaryColor,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation:  0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ),
    );
  }
}
