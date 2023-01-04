import 'package:enzoboi/utils/constants.dart';
import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  brightness: Brightness.dark,
  canvasColor: kBackgroundColor,
  scaffoldBackgroundColor: kBackgroundColor,
  primaryColor: kPrimaryColor,
  appBarTheme: const AppBarTheme(backgroundColor: kBackgroundColor),
  fontFamily: kFontName,
  colorScheme: ColorScheme.fromSwatch(
    backgroundColor: kBackgroundColor,
    brightness: Brightness.dark,
    accentColor: kAccentColor,
  ),
  indicatorColor: kAccentColor,
);