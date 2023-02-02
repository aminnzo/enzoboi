import 'dart:ui';

import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/utils/routes.dart';
import 'package:flutter/material.dart';

enum NavPages {
  landing,
  personal,
  work,
}

class TopNavigationMenu extends StatelessWidget {
  final NavPages selectedPage;
  final bool isMobileView;

  const TopNavigationMenu({
    super.key,
    required this.selectedPage,
    this.isMobileView = false,
  });

  @override
  Widget build(BuildContext context) => ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: isMobileView ? 30 : 30, vertical: 18),
            decoration: BoxDecoration(color: kBackgroundColor.withOpacity(0.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                _enzoText(context),
                _moreItems(context),
              ],
            ),
          ),
        ),
      );

  Widget _enzoText(BuildContext context) => GestureDetector(
        onTap: () {
          // prevent from navigating to current route
          if (selectedPage == NavPages.landing) return;
          Navigator.pushReplacementNamed(context, Routes.landing);
        },
        child: Text("Amin Mohseni.",
            style: AppTextStyle.titleLarge(context).copyWith(
              fontWeight: FontWeight.w900,
            )),
      );

  Widget _moreItems(BuildContext context) => isMobileView
      ? IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        )
      : Row(children: [
          _navItem(context, "personal", Routes.personal,
              selectedPage == NavPages.personal),
          _navItem(
              context, "works", Routes.works, selectedPage == NavPages.work),
        ]);

  Widget _navItem(
      BuildContext context, String name, String route, bool isSelected) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        // prevent from navigating to current route
        if (route == Routes.personal && selectedPage == NavPages.personal ||
            route == Routes.works && selectedPage == NavPages.work) return;
        Navigator.pushReplacementNamed(context, route);
      },
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
