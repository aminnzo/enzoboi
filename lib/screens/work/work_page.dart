import 'package:enzoboi/screens/work/widgets/works_item.dart';
import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/widgets/max_width_container.dart';
import 'package:enzoboi/widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
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
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .24),
                      Text("Works",
                          style: AppTextStyle.displayLarge(context).copyWith(
                            fontWeight: FontWeight.w900,
                          )),
                      const SizedBox(height: 80),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .2),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 18.0,
                          mainAxisSpacing: 30.0,
                        ),
                        itemCount: 14,
                        itemBuilder: (context, index) => const WorksItem(),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .24),
                    ],
                  ),
                ),
              ),
              const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: TopNavigationMenu(selectedPage: NavPages.work)),
            ],
          ),
        ),
      );
}
