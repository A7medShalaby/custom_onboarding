// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class AppColors {
  static final Color primary = HexColor.fromHex('#581845');
  static final Color redPurple = HexColor.fromHex('#900C3F');
  static final Color deepRed = HexColor.fromHex('#85011b');
  static final Color deepOrange = HexColor.fromHex('#FF5733');
  static final Color amber = HexColor.fromHex('#FFC300');
  static final Color lightGreen = HexColor.fromHex('#DAF7A6');

  //Solid colors

  static final darkPrimary = HexColor.fromHex('#593845');
  static final darkGrey = HexColor.fromHex('#707070');
  static final lightGrey = HexColor.fromHex('#797979');
  static final white = HexColor.fromHex('#FFFFFF');
  static final red = HexColor.fromHex('#e61f34');
}

//Extension for converting hex color string to color
extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    //Adding FF to the beginning of the string
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
