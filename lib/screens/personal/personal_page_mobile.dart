import 'package:enzoboi/theme/app_text_style.dart';
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
            padding: EdgeInsets.only(right: 30),
            child: Center(
              child: TopNavigationMenu(
                showHomePage: true,
                showPersonalPage: false,
                showWorkPage: true,
              ),
            ),
          ),
          // child: MobileAppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Personal",
                    style: AppTextStyle.displayMedium(context).copyWith(
                      fontWeight: FontWeight.w900,
                    )),
              ]),
            ],
          ),
        ));
  }
}
