import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/widgets/max_width_container.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  static const String routeName = "/work";

  const WorkPage({Key? key}) : super(key: key);

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: MaxWidthContainer(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Works",
                        style: AppTextStyle.displayLarge(context).copyWith(
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ),
              const Positioned(
                  top: 30,
                  right: 30,
                  child: TopNavigationMenu(
                    showHomePage: true,
                    showPersonalPage: true,
                    showWorkPage: false,
                  )),
            ],
          ),
        ),
      );
}
