import 'package:flutter/material.dart';

class AppTextStyle {
  static const String _font = '';
  static const Color _defaultColor = Colors.white;

  static const FontWeight _normalFontWeight = FontWeight.normal; // w400
  static const FontWeight _mediumFontWeight = FontWeight.w500;
  static const FontWeight _boldFontWeight = FontWeight.bold; // w700


  /// # Default Values:
  /// ```dart
  /// color = white
  /// fontWeight = normal
  static TextStyle overline (BuildContext context) =>
      Theme.of(context).textTheme.caption!.copyWith(
        fontWeight: _boldFontWeight,
        color: _defaultColor,
        fontFamily: _font,
      );

  /// # Default Values:
  /// ```dart
  /// color = white
  /// fontWeight = normal
  static TextStyle small (BuildContext context) =>
      Theme.of(context).textTheme.subtitle1!.copyWith(
        fontWeight: _normalFontWeight,
        color: _defaultColor,
        fontFamily: _font,
      );

  /// # Default Values:
  /// ```dart
  /// color = white
  /// fontWeight = normal
  static TextStyle medium (BuildContext context) =>
      Theme.of(context).textTheme.bodyText1!.copyWith(
        fontWeight: _normalFontWeight,
        color: _defaultColor,
        fontFamily: _font,
      );

  /// # Default Values:
  /// ```dart
  /// color = white
  /// fontWeight = normal
  static TextStyle standard (BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontWeight: _normalFontWeight,
        color: _defaultColor,
        fontFamily: _font,
      );

  /// # Default Values:
  /// ```dart
  /// color = white
  /// fontWeight = bold
  static TextStyle large(BuildContext context) =>
      Theme.of(context).textTheme.headline2!.copyWith(
        fontWeight: _boldFontWeight,
        color: _defaultColor,
        fontFamily: _font,
      );

  /// # Default Values:
  /// ```dart
  /// color = white
  /// fontWeight = normal
  static TextStyle head(BuildContext context) =>
      Theme.of(context).textTheme.headline1!.copyWith(
            fontWeight: _normalFontWeight,
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Default Values:
  /// ```dart
  /// color = white
  /// fontWeight = w500
  static TextStyle button(BuildContext context) =>
      Theme.of(context).textTheme.button!.copyWith(
        fontWeight: _mediumFontWeight,
        color: _defaultColor,
        fontFamily: _font,
      );
}
