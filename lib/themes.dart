import 'package:flutter/material.dart';

import 'constants.dart';
class MyThemes {
  static final primaryColor = Colors.blue.shade300;
  static final primary = Colors.blue;


  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,

    colorScheme: ColorScheme.dark(primary: primary),
    primaryColor: primaryColor,
    dividerColor: Colors.white,
    appBarTheme: appbartheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 8,
        primary: Colors.white,
        shape: CircleBorder(),
        minimumSize: Size.square(80),
      ),
    ),

  );

  static final lightTheme = ThemeData(
    primaryColor: primaryColor,
    dividerColor: Colors.black,
    appBarTheme: appbartheme.copyWith(
      titleTextStyle: TextStyle(color: Colors.black ,fontSize: 17,
          fontFamily: "Inter"),
      backgroundColor: Colors.grey[300],
      iconTheme: IconThemeData(color: Colors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 8,
        primary: Colors.white,
        shape: CircleBorder(),
        minimumSize: Size.square(80),
      ),
    ),

  );
/*
  backgroundColor: Color(0xFF100F1E),
  toolbarHeight: 80,
  elevation: 0.0,
  titleSpacing: 3.0,
  titleTextStyle:  TextStyle(fontSize: 17,
  fontFamily: "Inter"),
  iconTheme:  IconThemeData(color: Colors.white,size: 25)*/
}