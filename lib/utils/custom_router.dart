import 'package:enzoboi/screens/landing/landing_page.dart';
import 'package:enzoboi/screens/landing/landing_page_mobile.dart';
import 'package:enzoboi/screens/personal/personal_page.dart';
import 'package:enzoboi/screens/personal/personal_page_mobile.dart';
import 'package:enzoboi/screens/work/work_page.dart';
import 'package:enzoboi/screens/work/work_page_mobile.dart';
import 'package:enzoboi/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final routeName = settings.name;

  final defaultRoute = AnimatedPageRouteBuilder(
    routeName: routeName!,
    destination: const ResponsiveBuilder(
      desktop: LandingPage(),
      mobile: LandingPageMobile(),
    ),
  );

  switch (routeName) {
    case LandingPage.routeName:
      return defaultRoute;
    case WorkPage.routeName:
      return AnimatedPageRouteBuilder(
        routeName: routeName,
        destination: const ResponsiveBuilder(
          desktop: WorkPage(),
          mobile: WorkPageMobile(),
        ),
      );
    case PersonalPage.routeName:
      return AnimatedPageRouteBuilder(
        routeName: routeName,
        destination: const ResponsiveBuilder(
          desktop: PersonalPage(),
          mobile: PersonalPageMobile(),
        ),
      );
    default:
      return defaultRoute;
  }
}

class AnimatedPageRouteBuilder extends PageRouteBuilder {
  final Widget destination;
  final String routeName;

  AnimatedPageRouteBuilder({required this.destination, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (context, animation, another) => destination,
          transitionDuration: const Duration(milliseconds: 630),
          transitionsBuilder: (context, animation, another, child) {
            animation = CurvedAnimation(
              parent: animation,
              curve: Curves.decelerate,
            );
            return FadeTransition(opacity: animation, child: child);
          },
        );
}
