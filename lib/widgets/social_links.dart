import 'package:enzoboi/providers/data_provider.dart';
import 'package:enzoboi/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const double iconSize = 18;

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) => Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Material(
            color: Colors.transparent,
            elevation: 8,
            child: Container(
              color: kLightColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.squareGithub,
                        color: kPrimaryColor,
                        size: iconSize,
                      ),
                      onPressed: () => openUrl(DataProvider.github)),
                  IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.stackOverflow,
                        color: kPrimaryColor,
                        size: iconSize,
                      ),
                      onPressed: () => openUrl(DataProvider.stackoverflow)),
                  IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.squareTwitter,
                        color: kPrimaryColor,
                        size: iconSize,
                      ),
                      onPressed: () => openUrl(DataProvider.twitter)),
                  IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.solidEnvelope,
                        color: kAccentColor,
                        size: iconSize,
                      ),
                      onPressed: () => openUrl("mailto:${DataProvider.mail}")),
                ],
              ),
            )),
      ));

  void openUrl(String url) async {
    await launchUrl(Uri.parse(url));
  }
}
