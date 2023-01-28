import 'package:enzoboi/screens/landing/landing_page.dart';
import 'package:enzoboi/screens/landing/landing_page_mobile.dart';
import 'package:enzoboi/screens/not_found/not_found_page.dart';
import 'package:enzoboi/screens/not_found/not_found_page_mobile.dart';
import 'package:enzoboi/screens/personal/personal_page.dart';
import 'package:enzoboi/screens/personal/personal_page_mobile.dart';
import 'package:enzoboi/screens/work/work_page.dart';
import 'package:enzoboi/screens/work/work_page_mobile.dart';
import 'package:enzoboi/utils/routes.dart';
import 'package:enzoboi/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final routeName = settings.name;

  final defaultRoute = AnimatedPageRouteBuilder(
    routeName: routeName!,
    destination: const ResponsiveBuilder(
      desktop: NotFoundPage(),
      mobile: NotFoundPageMobile(),
    ),
  );

  switch (routeName) {
    case Routes.landing:
      return AnimatedPageRouteBuilder(
        routeName: routeName,
        destination: const ResponsiveBuilder(
          desktop: LandingPage(),
          mobile: LandingPageMobile(),
        ),
      );
    case Routes.works:
      return AnimatedPageRouteBuilder(
        routeName: routeName,
        destination: const ResponsiveBuilder(
          desktop: WorkPage(),
          mobile: WorkPageMobile(),
        ),
      );
    case Routes.personal:
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
