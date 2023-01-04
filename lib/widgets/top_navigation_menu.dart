import 'package:enzoboi/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class TopNavigationMenu extends StatelessWidget {
  const TopNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text('personal', style: AppTextStyle.labelLarge(context)),
      const SizedBox(width: 30),
      Text('work', style: AppTextStyle.labelLarge(context)),
    ],
  );
}
