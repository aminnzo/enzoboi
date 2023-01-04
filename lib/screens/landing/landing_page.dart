import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/theme/app_theme.dart';
import 'package:enzoboi/utils/animations.dart';
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
                  Text("Enzo M.", style: AppTextStyle.displayLarge(context)),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Flutter',
                          style: AppTextStyle.headlineLarge(context)
                              .copyWith(color: kAccentColor)),
                      TextSpan(
                          text: "-",
                          style: AppTextStyle.headlineLarge(context)),
                      TextSpan(
                          text: 'Dart',
                          style: AppTextStyle.headlineLarge(context)
                              .copyWith(color: kAccentColor)),
                      TextSpan(
                          text: ' ' 'developer',
                          style: AppTextStyle.headlineLarge(context)),
                    ]),
                  ),
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
