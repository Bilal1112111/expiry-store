import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color primaryColor = Color(0XFF19A975);
const double inputLabelButtonsFontSize = 14;
const double hintFontSize = 12;
const double headerFontSize = 22;
const double buttonHeight = 48;
const double borderRadius = 20;

ThemeData appTheme = ThemeData(
  fontFamily: 'Poppins',
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white.withAlpha(1),
    ),

    // toolbarHeight: 36,
    backgroundColor: primaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(35),
        bottomRight: Radius.circular(35),
      ),
    ),
    titleTextStyle: const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 22,
    ),
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
  ),
);
