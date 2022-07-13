// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';
import 'app_padding.dart';
import 'app_size.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //Main app colors
    primaryColor: AppColors.primary, //Primary color for app
    primaryColorLight: AppColors.lightGreen, //Light primary color for app
    primaryColorDark: AppColors.darkPrimary, //Dark primary color for app
    disabledColor: AppColors.darkGrey, //Disabled color for widgets
    splashColor: AppColors.lightGrey, //Splash color for widgets
    accentColor: AppColors.lightGrey, //Accent color for widgets

    //CardView theme
    cardTheme: CardTheme(
      color: AppColors.white, //Card color
      shadowColor: AppColors.lightGrey, //Card shadow color
      elevation: AppSize.size4, //Card elevation
    ),

    //AppBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true, //Center appbar title
      color: AppColors.primary, //Appbar color
      elevation: AppSize.size4, //Appbar elevation
      shadowColor: AppColors.lightGrey, //Appbar shadow color
      titleTextStyle: getRegularTextStyle(
        color: AppColors.white,
        fontSize: FontSize.medium,
      ), //Appbar title style
    ),

    //Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(), //Button shape
      buttonColor: AppColors.primary, //Button color
      splashColor: AppColors.lightGrey, //Button splash color
    ),

    //ElevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularTextStyle(color: AppColors.white), //Button text style
        primary: AppColors.primary, //Button color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.size20)), //Button shape
      ),
    ),

    //Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldTextStyle(
        color: AppColors.primary,
        fontSize: FontSize.xLarge,
      ), //Headline 1 text style
      headline2: getSemiBoldTextStyle(
        color: AppColors.lightGrey,
        fontSize: FontSize.xLarge,
      ), //Headline 2 text style
      headline3: getSemiBoldTextStyle(
        color: AppColors.white,
        fontSize: FontSize.xLarge,
      ), //Headline 2 text style
      subtitle1: getMediumTextStyle(
        color: AppColors.lightGrey,
        fontSize: FontSize.medium,
      ), //Subtitle 1 text style
      subtitle2: getMediumTextStyle(
        color: AppColors.primary,
        fontSize: FontSize.small,
      ), //Subtitle 2 text style
      caption:
          getRegularTextStyle(color: AppColors.darkGrey), //Caption text style
      bodyText1:
          getRegularTextStyle(color: AppColors.lightGrey), //Body text style
    ),

    //Input Decoration theme(TextFormField)
    inputDecorationTheme: InputDecorationTheme(
      //Input decoration padding
      contentPadding: const EdgeInsets.all(AppPadding.padding8),
      //Input decoration hint style
      hintStyle: getRegularTextStyle(color: AppColors.lightGrey),
      //Input decoration label style
      labelStyle: getMediumTextStyle(color: AppColors.darkGrey),
      //Input decoration error style
      errorStyle: getRegularTextStyle(color: AppColors.red),
      //Input decoration enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.lightGrey,
          width: AppSize.size1point5,
        ),
        //Input border radius
        borderRadius: BorderRadius.circular(AppSize.size8),
      ),
      //Input decoration focused border
      focusedBorder: OutlineInputBorder(
        //Input border color
        borderSide: BorderSide(
          color: AppColors.primary,
          width: AppSize.size1point5,
        ),
        //Input border radius
        borderRadius: BorderRadius.circular(AppSize.size8),
      ),
      //Input decoration error border
      errorBorder: OutlineInputBorder(
        //Input border color
        borderSide: BorderSide(
          color: AppColors.red,
          width: AppSize.size1point5,
        ),
        //Input border radius
        borderRadius: BorderRadius.circular(AppSize.size8),
      ),
      //Input decoration disabled border
      focusedErrorBorder: OutlineInputBorder(
        //Input border color
        borderSide: BorderSide(
          color: AppColors.primary,
          width: AppSize.size1point5,
        ),
        //Input border radius
        borderRadius: BorderRadius.circular(AppSize.size8),
      ),
    ),
  );
}
