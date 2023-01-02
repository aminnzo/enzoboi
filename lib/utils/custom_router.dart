import 'package:enzoboi/screens/home_page.dart';
import 'package:enzoboi/screens/home_page_mobile.dart';
import 'package:enzoboi/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final routeName = settings.name;
  switch (routeName) {
    case HomePage.routeName:
      return AnimatedPageRouteBuilder(
        routeName: HomePage.routeName,
        destination: const ResponsiveBuilder(
          desktop: HomePage(),
          mobile: HomePageMobile(),
        ),
      );
    default:
      return AnimatedPageRouteBuilder(
        routeName: HomePage.routeName,
        destination: const ResponsiveBuilder(
          desktop: HomePage(),
          mobile: HomePageMobile(),
        ),
      );
  }
}

class AnimatedPageRouteBuilder extends PageRouteBuilder {
  final Widget destination;
  final String routeName;

  AnimatedPageRouteBuilder({required this.destination, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (context, animation, another) => destination,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, another, child) {
            animation = CurvedAnimation(
              parent: animation,
              curve: Curves.decelerate,
            );
            return FadeTransition(opacity: animation, child: child);
          },
        );
}
