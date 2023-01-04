import 'package:enzoboi/utils/constants.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;

  const ResponsiveBuilder({
    super.key,
    required this.desktop,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constrains) =>
          (constrains.maxWidth <= kMobileWidth) ? mobile : desktop);
}
