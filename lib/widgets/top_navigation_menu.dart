import 'package:enzoboi/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class TopNavigationMenu extends StatelessWidget {
  final bool showHomePage;
  final bool showWorkPage;
  final bool showPersonalPage;

  const TopNavigationMenu({
    super.key,
    required this.showHomePage,
    required this.showWorkPage,
    required this.showPersonalPage,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _navItem(context, "home", "/", showHomePage),
          _navItem(context, "personal", "/personal", showPersonalPage),
          _navItem(context, "work", "/work", showWorkPage),
        ],
      );

  Widget _navItem(
      BuildContext context, String name, String route, bool visible) {
    return Visibility(
      visible: visible,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, route),
          child: Text(name, style: AppTextStyle.labelLarge(context)),
        ),
      ),
    );
  }
}
