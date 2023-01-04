import 'package:flutter/material.dart';

class AppTextStyle {
  static const String _font = 'Inter';
  static const Color _defaultColor = Colors.white;

  /// # Largest of the display styles.
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  ///
  /// ```dart
  /// color = white
  /// size = 57
  /// fontWeight = regular
  static TextStyle displayLarge(BuildContext context) =>
      Theme.of(context).textTheme.displayLarge!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Middle size of the display styles.
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  ///
  /// ```dart
  /// color = white
  /// size = 45
  /// fontWeight = regular
  static TextStyle displayMedium(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Smallest of the display styles.
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  ///
  /// ```dart
  /// color = white
  /// size = 36
  /// fontWeight = regular
  static TextStyle displaySmall(BuildContext context) =>
      Theme.of(context).textTheme.displaySmall!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Largest of the headline styles
  /// Headline styles are smaller than display styles.
  /// They're best-suited for short, high-emphasis text on smaller screens.
  ///
  /// ```dart
  /// color = white
  /// size = 32
  /// fontWeight = regular
  static TextStyle headlineLarge(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Middle size of the headline styles.
  /// Headline styles are smaller than display styles.
  /// They're best-suited for short, high-emphasis text on smaller screens.
  ///
  /// ```dart
  /// color = white
  /// size = 28
  /// fontWeight = regular
  static TextStyle headlineMedium(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Smallest of the headline styles.
  /// Headline styles are smaller than display styles.
  /// They're best-suited for short, high-emphasis text on smaller screens.
  ///
  /// ```dart
  /// color = white
  /// size = 24
  /// fontWeight = regular
  static TextStyle headlineSmall(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Largest of the title styles.
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  ///
  /// ```dart
  /// color = white
  /// size = 22
  /// fontWeight = medium
  static TextStyle titleLarge(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Middle size of the title styles.
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  ///
  /// ```dart
  /// color = white
  /// size = 16
  /// fontWeight = medium
  static TextStyle titleMedium(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Smallest of the title styles.
  /// Titles are smaller than headline styles and should be used for shorter, medium-emphasis text.
  ///
  /// ```dart
  /// color = white
  /// size = 14
  /// fontWeight = medium
  static TextStyle titleSmall(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Largest of the label styles.
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  ///
  /// ```dart
  /// color = white
  /// size = 14
  /// fontWeight = medium
  static TextStyle labelLarge(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Middle size of the label styles.
  /// Label styles are smaller, utilitarian styles,
  /// used for areas of the UI such as text inside of components
  /// or very small supporting text in the content body, like captions.
  ///
  /// ```dart
  /// color = white
  /// size = 12
  /// fontWeight = medium
  static TextStyle labelMedium(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Smallest of the label styles.
  /// Label styles are smaller, utilitarian styles,
  /// used for areas of the UI such as text inside of components
  /// or very small supporting text in the content body, like captions.
  ///
  /// ```dart
  /// color = white
  /// size = 11
  /// fontWeight = medium
  static TextStyle labelSmall(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Largest of the body styles.
  /// Body styles are used for longer passages of text.
  ///
  /// ```dart
  /// color = white
  /// size = 16
  /// fontWeight = regular
  static TextStyle bodyLarge(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Middle size of the body styles.
  /// Body styles are used for longer passages of text.
  /// The default text style for Material.
  ///
  /// ```dart
  /// color = white
  /// size = 14
  /// fontWeight = regular
  static TextStyle bodyMedium(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );

  /// # Smallest of the body styles.
  /// Body styles are used for longer passages of text.
  ///
  /// ```dart
  /// color = white
  /// size = 12
  /// fontWeight = regular
  static TextStyle bodySmall(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
            color: _defaultColor,
            fontFamily: _font,
          );
}
