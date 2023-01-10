import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/widgets/max_width_container.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  static const String routeName = "/personal";
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
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Personal",
                    style: AppTextStyle.displayLarge(context).copyWith(
                      fontWeight: FontWeight.w900,
                    )),
              ],
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
