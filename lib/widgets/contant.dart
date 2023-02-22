import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentICon extends StatelessWidget {
  String textCard;
  double fontSizeText;
  double heightSizeBox;
  Color colorText;
  IconData iconCont;

  ContentICon({
    this.fontSizeText = 18,
    this.colorText = Colors.white,
    this.heightSizeBox = 15.0,
    this.textCard = 'value',
    this.iconCont = FontAwesomeIcons.expand,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconCont,
          size: 90,
        ),
        SizedBox(
          height: heightSizeBox,
        ),
        Text(
          textCard,
          style: TextStyle(
            color: colorText,
            fontSize: fontSizeText,
          ),
        )
      ],
    );
  }
}
