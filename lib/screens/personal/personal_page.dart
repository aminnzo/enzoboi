import 'package:enzoboi/providers/data_provider.dart';
import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/widgets/max_width_container.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _informationBox(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 180),
                            _aboutMeLine(),
                            const SizedBox(height: 24),
                            Text("I am developer during daytime",
                                style: AppTextStyle.titleLarge(context)
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal)),
                            Text("& work with batman during nights.",
                                style: AppTextStyle.titleMedium(context)
                                    .copyWith(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.normal)),
                            const SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(right: 88.0),
                              child: Text(
                                  "I'm an Expert Flutter and Mobile Applications developer, with 5 years of experience. I've started with Native Android (Java, Kotlin) and Xamarin for Android, then switch to Flutter!.\nI can develop the high-quality Hybrid Flutter iOS and Android from scratch using different features as per requirements. Not only that, but I can convert XD, Figma, PSD, Sketch designs in Flutter. Furthermore, I am following structured programming patterns in flutter code to refactor or re-use the code in future!\n\nI worked on apps having:\nWeb services\nMaterial Design\nReal-time DB\nGoogle Maps\nLocation APIs\nCustom Widgets\nLocalization - RTL Direction\nSocial Media Integrations\nAdMob Integration\nAudio and Video Player and many other functionalities.",
                                  style: AppTextStyle.titleMedium(context)
                                      .copyWith(
                                          height: 1.6, letterSpacing: 1.6)),
                            ),
                            const SizedBox(height: 80),
                            Text("\u00a9 2023 Amin. All Rights Reserved",
                                style: AppTextStyle.titleMedium(context)
                                    .copyWith(color: Colors.white60)),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
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

  Widget _aboutMeLine() {
    const lineHeight = 18.0;
    return Row(
      children: [
        Container(height: lineHeight, width: 60, color: Colors.white),
        const SizedBox(width: 20),
        Text("ABOUT ME",
            style: AppTextStyle.headlineMedium(context).copyWith(
              fontWeight: FontWeight.w100,
            )),
        const SizedBox(width: 20),
        Expanded(child: Container(height: lineHeight, color: Colors.white)),
      ],
    );
  }

  Widget _informationBox() {
    return Container(
      width: 364,
      padding: const EdgeInsets.all(38),
      margin: const EdgeInsets.fromLTRB(30, 80, 30, 30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60, width: 2),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hello There",
                  style: AppTextStyle.headlineSmall(context)
                      .copyWith(fontWeight: FontWeight.bold)),
              Container(
                  width: 99,
                  height: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(top: 4)),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 180,
            width: double.maxFinite,
            child: ClipRRect(
              child: Image.asset("assets/images/self-photo.jpg",
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            "Eat. Breath. Code;",
            style: GoogleFonts.mPlus1Code(
                color: Colors.white, letterSpacing: 3.3, fontSize: 22),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 38),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("UTC & GMT +3:30",
                  style: AppTextStyle.labelLarge(context)
                      .copyWith(fontWeight: FontWeight.w100)),
              Text("+1:30 ahead of CET",
                  style: AppTextStyle.labelLarge(context)
                      .copyWith(fontWeight: FontWeight.w100)),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialCircle(
                icon: FontAwesomeIcons.squareGithub,
                hoverColor: kGithubColor,
                onTap: () => openUrl(DataProvider.github),
              ),
              _socialCircle(
                icon: FontAwesomeIcons.stackOverflow,
                hoverColor: kStackoverflowColor,
                onTap: () => openUrl(DataProvider.stackoverflow),
              ),
              _socialCircle(
                icon: FontAwesomeIcons.squareTwitter,
                hoverColor: kTwitterColor,
                onTap: () => openUrl(DataProvider.twitter),
              ),
              _socialCircle(
                icon: FontAwesomeIcons.squareDribbble,
                hoverColor: kDribbbleColor,
                onTap: () => openUrl(DataProvider.dribbble),
              ),
            ],
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.maxFinite,
            height: 38,
            child: ElevatedButton(
              onPressed: () => openUrl("mailto:${DataProvider.mail}"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(horizontal: 30)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2))),
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => kAccentColor),
                overlayColor:
                    MaterialStateColor.resolveWith((states) => kLightColor),
              ),
              child: Text("Get in Touch",
                  style: AppTextStyle.labelMedium(context)),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.maxFinite,
            height: 38,
            child: ElevatedButton(
              onPressed: () => openUrl(DataProvider.resume),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(horizontal: 30)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2))),
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => kPrimaryColor),
              ),
              child: Text("Download CV",
                  style: AppTextStyle.labelMedium(context)
                      .copyWith(color: kBackgroundColor)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialCircle({
    required IconData icon,
    required Color hoverColor,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white60, width: 2),
          shape: BoxShape.circle),
      child: Center(
          child: IconButton(
              hoverColor: hoverColor,
              icon: FaIcon(icon, color: Colors.white70, size: 18),
              onPressed: onTap)),
    );
  }

  void openUrl(String url) async {
    await launchUrl(Uri.parse(url));
  }
}
