import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/theme/app_theme.dart';
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
          child: Padding(
            padding: EdgeInsets.only(right: 30),
            child: Center(child: TopNavigationMenu()),
          ),
          // child: MobileAppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Enzo M.",
                    style: AppTextStyle.displayMedium(context).copyWith(
                      fontWeight: FontWeight.w900,
                    )),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Flutter-Dart',
                        style: AppTextStyle.headlineMedium(context)
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
        ));
  }
}
