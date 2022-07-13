// ignore_for_file: unused_element, prefer_const_constructors, unused_field, must_be_immutable

import 'package:e_commerical_app/app/router/app_router.dart';
import 'package:flutter/material.dart';

import 'resources/app_theme.dart';

class Application extends StatefulWidget {
  Application._internal(); //Constructor for internal use

  int appState = 0;

  static final Application instance =
      Application._internal(); //Singleton instance

  factory Application() => instance; //Factory method for internal use

  @override
  State<Application> createState() => _ApplicationState(); //State class
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Remove debug banner
      theme: getApplicationTheme(), //Set application theme
      onGenerateRoute: RouteGenerator.generateRoute, //Router
      initialRoute: AppRoutes.splashScreenRoute, //Initial route
    );
  }
}
