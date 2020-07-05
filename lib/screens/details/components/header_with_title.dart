import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithTitle extends StatelessWidget {
  const HeaderWithTitle({
    Key key,
    @required this.size, this.band, this.music, this.image,
  }) : super(key: key);
  final String band, music, image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$band\n',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '$music',
                        style: Theme.of(context).textTheme.headline3.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ]
                  ),
                ),
                Spacer(),
                Image.asset(image)
              ],
            ),
          ),
        ],
      ),
    );
  }
}