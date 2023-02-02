import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/widgets/social_links.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: TopNavigationMenu(
            selectedPage: NavPages.landing,
            isMobileView: true,
          ),
          // child: MobileAppBar(),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Under Development",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.headlineLarge(context).copyWith(
                        fontWeight: FontWeight.w900,
                      )),
                  const SizedBox(height: 14),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Flutter-Dart',
                          style: AppTextStyle.headlineSmall(context)
                              .copyWith(color: kAccentColor)),
                      TextSpan(
                          text: ' ' 'developer',
                          style: AppTextStyle.headlineSmall(context)),
                    ]),
                  ),
                ]),
                const SocialLinks(isMobileView: true),
              ],
            ),
          ),
        ));
  }
}
