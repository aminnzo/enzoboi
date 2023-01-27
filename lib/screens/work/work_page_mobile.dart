import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class WorkPageMobile extends StatelessWidget {
  const WorkPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: TopNavigationMenu(
            selectedPage: NavPages.work,
            isMobileView: true,
          ),
          // child: MobileAppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Works",
                    style: AppTextStyle.displayMedium(context).copyWith(
                      fontWeight: FontWeight.w900,
                    )),
              ]),
            ],
          ),
        ));
  }
}
