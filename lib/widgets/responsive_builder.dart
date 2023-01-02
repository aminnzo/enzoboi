import 'package:flutter/material.dart';

import '../utils/constrains.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constrains) =>
          (constrains.maxWidth <= kMobileWidth) ? mobile : desktop);
}
