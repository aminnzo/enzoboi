import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class PersonalPageMobile extends StatefulWidget {
  const PersonalPageMobile({Key? key}) : super(key: key);

  @override
  State<PersonalPageMobile> createState() => _PersonalPageMobileState();
}

class _PersonalPageMobileState extends State<PersonalPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: TopNavigationMenu(selectedPage: NavPages.personal),
            ),
          ),
          // child: MobileAppBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * .1),
                Text("About me",
                    style: AppTextStyle.titleLarge(context).copyWith(
                      fontWeight: FontWeight.w900,
                    )),
                const SizedBox(height: 10),
                Text(
                    "Greetings! I'm an Expert Flutter and Mobile Applications developer, with 4 years of experience. I've started with Native Android (Java, Kotlin) and Xamarin for Android, then switch to Flutter!. I can develop the high-quality Hybrid Flutter iOS and Android from scratch using different features as per requirements. Not only that, but I can convert XD, Figma, PSD, Sketch designs in Flutter. Furthermore, I am following structured programming patterns in flutter code to refactor or re-use the code in future! I worked on apps having: Web services Material Design Real-time DB Google Maps Location APIs Custom Widgets Localization - RTL Direction Social Media Integrations AdMob Integration Audio and Video Player and many other functionalities.",
                    style: AppTextStyle.titleMedium(context).copyWith(
                      height: 1.3,
                    )),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                            (states) => kAccentColor),
                    overlayColor: MaterialStateColor.resolveWith(
                            (states) => kLightColor),
                  ),
                  child: Text("Download CV",
                      style: AppTextStyle.labelLarge(context).copyWith(
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
