import 'package:flutter/cupertino.dart';

class TextDemo {
  ralewaytext(
      String text, Color color, double fontsize, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: fontsize,
          fontWeight: fontWeight,
          color: color),
    );
  }

  vtext(String text, Color color, double fontsize, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'vineritc',
          fontSize: fontsize,
          fontWeight: fontWeight,
          color: color),
    );
  }
}
