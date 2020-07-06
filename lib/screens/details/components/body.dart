import 'package:appHibrido_Letras/screens/details/components/header_with_title.dart';
import 'package:appHibrido_Letras/screens/details/components/lyrics_body.dart';
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
            band: "Toto",
            music: "Africa",
            image: "assets/images/logo.png",
          ),
          Lyrics(size: size, lyrics: " I hear the drums echoing tonight\n But she hears only whispers of some quiet conversation\n She's coming in, 12:30 flight The moonlit wings reflect the stars that guide me towards salvation\n I stopped an old man along the way\n Hoping to find some old forgotten words or ancient melodies \n He turned to me as if to say, \"Hurry boy, it's waiting there for you\"\n It's gonna take a lot to drag me away from you\n There's nothing that a hundred men or more could ever do\n I bless the rains down in Africa\n Gonna take some time to do the things we never had (ooh, ooh)\n The wild dogs cry out in the night\n As they grow restless, longing for some solitary company\n I know that I must do what's right\n As sure as Kilimanjaro rises like Olympus above the Serengeti\n I seek to cure what's deep inside, frightened of this thing that I've become\n It's gonna take a lot to drag me away from you\n There's nothing that a hundred men or more could ever do\n I bless the rains down in Africa\n Gonna take some time to do the things we never had (ooh, ooh)\n Hurry boy, she's waiting there for you\n It's gonna take a lot to drag me away from you\n There's nothing that a hundred men or more could ever do\n I bless the rains down in Africa\n I bless the rains down in Africa (I bless the rain)\n I bless the rains down in Africa (I bless the rain)\n I bless the rains down in Africa\n I bless the rains down in Africa (ah, gonna take the time)\n Gonna take some time to do the things we never had (ooh, ooh)",),
        ],
      ),
    );
  }
}
