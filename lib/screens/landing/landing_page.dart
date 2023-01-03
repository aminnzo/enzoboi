import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/theme/app_theme.dart';
import 'package:enzoboi/widgets/max_width_container.dart';
import 'package:enzoboi/widgets/social_links.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = "/";

  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _linkColumnAnimation;

  final animationDuration = const Duration(milliseconds: 1400);

  Animation<Offset> getTweenAnimation(
      {double beginX = 0.0,
      double beginY = 0.0,
      double endX = 0.0,
      double endY = 0.0,
      double begin = 0,
      double end = 1,
      Curve cubic = Curves.easeOutQuint,
      required AnimationController controller}) {
    return Tween<Offset>(
      begin: Offset(beginX, beginY),
      end: Offset(endX, endY),
    ).animate(CurvedAnimation(
        parent: controller, curve: Interval(begin, end, curve: cubic)));
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: animationDuration)
      ..forward();

    _linkColumnAnimation = getTweenAnimation(
      beginX: -100,
      controller: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: MaxWidthContainer(
          child: Stack(
            children: [
              Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Enzo M.", style: AppTextStyle.head(context)),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Flutter/Dart',
                          style: AppTextStyle.large(context).copyWith(color: kAccentColor)),
                      TextSpan(
                          text: ' ' 'developer',
                          style: AppTextStyle.large(context)),
                    ]),
                  )
                ],
              )),
              // Positioned(top: 30, right: 30, child: NavigationBar()),
              SlideTransition(
                  position: _linkColumnAnimation, child: const SocialLinks())
            ],
          ),
        ),
      );
}
