import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/theme/app_theme.dart';
import 'package:enzoboi/widgets/social_links.dart';
import 'package:flutter/material.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Container(color: kAccentColor),
          // child: MobileAppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Enzo M.", style: AppTextStyle.displayMedium(context)),
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
              const SocialLinks()
            ],
          ),
        ));
  }
}
