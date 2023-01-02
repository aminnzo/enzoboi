import 'package:enzoboi/screens/landing/landing_page.dart';
import 'package:enzoboi/screens/landing/landing_page_mobile.dart';
import 'package:enzoboi/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final routeName = settings.name;

  final _defaultRoute = AnimatedPageRouteBuilder(
    routeName: routeName!,
    destination: const ResponsiveBuilder(
      desktop: LandingPage(),
      mobile: LandingPageMobile(),
    ),
  );

  switch (routeName) {
    case LandingPage.routeName:
      print('--------- route = $routeName');
      return AnimatedPageRouteBuilder(
        routeName: routeName,
        destination: const ResponsiveBuilder(
          desktop: LandingPage(),
          mobile: LandingPageMobile(),
        ),
      );
    default:
      print('--------- route $routeName');
      return _defaultRoute;
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
