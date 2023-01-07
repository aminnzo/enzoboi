import 'package:enzoboi/providers/data_provider.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const double iconSize = 18;

class SocialLinks extends StatefulWidget {
  final bool isMobileView;

  const SocialLinks({super.key, this.isMobileView = false});

  @override
  State<SocialLinks> createState() => _SocialLinksState();
}

class _SocialLinksState extends State<SocialLinks> {
  @override
  Widget build(BuildContext context) => Align(
      alignment:
          widget.isMobileView ? Alignment.bottomCenter : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: widget.isMobileView ? 0 : 30),
        child: Material(
            color: Colors.transparent,
            elevation: 8,
            child: Container(
              color: kLightColor,
              child: widget.isMobileView ? horizontalItems : verticalItems,
            )),
      ));

  Widget get verticalItems => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: items,
      );

  Widget get horizontalItems => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: items,
      );

  List<Widget> get items => [
        IconButton(
            hoverColor: kGithubColor,
            icon: const FaIcon(
              FontAwesomeIcons.squareGithub,
              color: kPrimaryColor,
              size: iconSize,
            ),
            onPressed: () => openUrl(DataProvider.github)),
        IconButton(
            hoverColor: kStackoverflowColor,
            icon: const FaIcon(
              FontAwesomeIcons.stackOverflow,
              color: kPrimaryColor,
              size: iconSize,
            ),
            onPressed: () => openUrl(DataProvider.stackoverflow)),
        IconButton(
            hoverColor: kTwitterColor,
            icon: const FaIcon(
              FontAwesomeIcons.squareTwitter,
              color: kPrimaryColor,
              size: iconSize,
            ),
            onPressed: () => openUrl(DataProvider.twitter)),
        IconButton(
            hoverColor: kDribbbleColor,
            icon: const FaIcon(
              FontAwesomeIcons.squareDribbble,
              color: kPrimaryColor,
              size: iconSize,
            ),
            onPressed: () => openUrl(DataProvider.dribbble)),
        IconButton(
            hoverColor: kEmailColor,
            icon: const FaIcon(
              FontAwesomeIcons.solidEnvelope,
              color: kAccentColor,
              size: iconSize,
            ),
            onPressed: () => openUrl("mailto:${DataProvider.mail}")),
      ];

  void openUrl(String url) async {
    await launchUrl(Uri.parse(url));
  }
}
