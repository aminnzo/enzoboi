import 'package:flutter/material.dart';


const Color kBackgroundColor = Color(0xff000b11);
const Color kPrimaryColor = Color(0xffedeeff);
const Color kAccentColor = Color(0xff948653);
const Color kLightColor = Color(0x1ADAC1FF);

final ThemeData appThemeData = ThemeData(
  brightness: Brightness.dark,
  canvasColor: kBackgroundColor,
  scaffoldBackgroundColor: kBackgroundColor,
  primaryColor: kPrimaryColor,
  appBarTheme: const AppBarTheme(backgroundColor: kBackgroundColor),
  fontFamily: '',
  colorScheme: ColorScheme.fromSwatch(
    backgroundColor: kBackgroundColor,
    brightness: Brightness.dark,
    accentColor: kAccentColor,
  ),
  indicatorColor: kAccentColor,
);