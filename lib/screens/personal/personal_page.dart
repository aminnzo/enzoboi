import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/widgets/max_width_container.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: MaxWidthContainer(
          child: Stack(
            children: [
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height * .24),
                          Text("About me",
                              style: AppTextStyle.displaySmall(context).copyWith(
                                fontWeight: FontWeight.w900,
                              )),
                          const SizedBox(height: 30),
                          Text(
                              "Greetings! I'm an Expert Flutter and Mobile Applications developer, with 4 years of experience. I've started with Native Android (Java, Kotlin) and Xamarin for Android, then switch to Flutter!. I can develop the high-quality Hybrid Flutter iOS and Android from scratch using different features as per requirements. Not only that, but I can convert XD, Figma, PSD, Sketch designs in Flutter. Furthermore, I am following structured programming patterns in flutter code to refactor or re-use the code in future! I worked on apps having: Web services Material Design Real-time DB Google Maps Location APIs Custom Widgets Localization - RTL Direction Social Media Integrations AdMob Integration Audio and Video Player and many other functionalities.",
                              style: AppTextStyle.titleMedium(context).copyWith(
                                height: 1.3,
                              )),
                          const SizedBox(height: 60),
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
                ),
              ),
              const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: TopNavigationMenu(selectedPage: NavPages.personal)),
            ],
          ),
        ),
      );
}
