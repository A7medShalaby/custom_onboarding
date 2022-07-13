// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontName {
  static const String quicksand = 'Quicksand';
}

class FontThickness {
  static FontWeight bold = FontWeight.w700;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight medium = FontWeight.w500;
  static FontWeight regular = FontWeight.w400;
  static FontWeight light = FontWeight.w300;
}

class FontSize {
  static const double xLarge = 20.0;
  static const double large = 18.0;
  static const double medium = 16.0;
  static const double small = 14.0;
  static const double xSmall = 12.0;
}

//Function to get text style.
TextStyle _getTextStyle(double size, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: size,
    fontWeight: fontWeight,
    color: color,
    fontFamily: FontName.quicksand,
  );
}

//Bold Text Style
TextStyle getBoldTextStyle(
    {double fontSize = FontSize.xLarge, required Color color}) {
  return _getTextStyle(fontSize, FontThickness.bold, color);
}

//SemiBold Text Style
TextStyle getSemiBoldTextStyle(
    {double fontSize = FontSize.large, required Color color}) {
  return _getTextStyle(fontSize, FontThickness.semiBold, color);
}

//Medium Text Style
TextStyle getMediumTextStyle(
    {double fontSize = FontSize.medium, required Color color}) {
  return _getTextStyle(fontSize, FontThickness.semiBold, color);
}

//Regular Text Style
TextStyle getRegularTextStyle(
    {double fontSize = FontSize.small, required Color color}) {
  return _getTextStyle(fontSize, FontThickness.regular, color);
}

//Light Text Style
TextStyle getLightTextStyle(
    {double fontSize = FontSize.xSmall, required Color color}) {
  return _getTextStyle(fontSize, FontThickness.light, color);
}
