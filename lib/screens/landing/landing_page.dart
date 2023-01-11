import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/animations.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/widgets/max_width_container.dart';
import 'package:enzoboi/widgets/social_links.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
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
                    Text("Landing",
                        style: AppTextStyle.displayLarge(context).copyWith(
                          fontWeight: FontWeight.w900,
                        )),
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
                ),
              ),
              const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: TopNavigationMenu(selectedPage: NavPages.landing)),
              SlideTransition(
                  position: _linkColumnAnimation, child: const SocialLinks())
            ],
          ),
        ),
      );
}
