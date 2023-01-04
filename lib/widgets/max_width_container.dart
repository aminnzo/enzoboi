import 'package:enzoboi/utils/constants.dart';
import 'package:flutter/material.dart';


class MaxWidthContainer extends StatelessWidget {
  final Widget child;

  const MaxWidthContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: child,
    ));
  }
}
