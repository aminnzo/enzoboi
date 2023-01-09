import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:flutter/material.dart';

enum NavPages {
  landing,
  personal,
  work,
}

class TopNavigationMenu extends StatelessWidget {
  final NavPages selectedPage;

  const TopNavigationMenu({
    super.key,
    required this.selectedPage,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          _enzoText(context),
          Row(children: [
            _navItem(context, "personal", "/personal",
                selectedPage == NavPages.personal),
            _navItem(context, "work", "/work", selectedPage == NavPages.work),
          ])
        ],
      );

  Widget _enzoText(BuildContext context) => GestureDetector(
        onTap: () => Navigator.pushReplacementNamed(context, "/"),
        child: Text("Enzo M.",
            style: AppTextStyle.titleLarge(context).copyWith(
              fontWeight: FontWeight.w900,
            )),
      );

  Widget _navItem(
      BuildContext context, String name, String route, bool isSelected) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => Navigator.pushReplacementNamed(context, route),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        margin: const EdgeInsets.only(left: 16),
        child: Text(name,
            style: AppTextStyle.labelLarge(context).copyWith(
              color: isSelected ? Colors.black : Colors.white,
            )),
      ),
    );
  }
}
