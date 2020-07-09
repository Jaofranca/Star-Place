import 'package:flutter/material.dart';
import 'package:Starplace/Screens/Aboutme.dart';
import 'package:Starplace/Screens/home.dart';
import 'package:Starplace/Screens/starbuttons.dart';
import 'package:Starplace/Screens/starmusic.dart';
import 'dart:ui';
import 'package:Starplace/Components/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            headline4: TextStyle(
                fontFamily: 'Nexus',
                color: Colors.white,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.25),
            headline5: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
            ),
            subtitle1: TextStyle(
              fontFamily: 'Nexus',
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
            subtitle2: TextStyle(
              fontFamily: 'Nexus',
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.25,
            )),
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xFF393e46),
        primaryColor: Color(0xFF222831),
        appBarTheme: AppBarTheme(
          color: kappBarColor,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: 'Starjedi', bodyColor: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Myhome(),
        '/starbutton': (context) => StarButtons(),
        '/starmusic': (context) => StarMusic(),
        '/aboutme': (context) => Aboutme()
      },
    );
  }
}
