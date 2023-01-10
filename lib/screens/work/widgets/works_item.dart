import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:flutter/material.dart';

class WorksItem extends StatelessWidget {
  const WorksItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 420,
        maxHeight: 300,
        minWidth: 280,
        minHeight: 160,
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kLightColor,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  'Image Here',
                  style: AppTextStyle.headlineSmall(context),
                ),
              ),
            ),
          ),
          Text(
            'Title 1',
            style: AppTextStyle.titleLarge(context),
          ),
          const SizedBox(height: 8),
          Text(
            'description for this job - normally it\'t longer than title text. description for this job - normally it\'t longer than title text',
            style: AppTextStyle.titleSmall(context),
          ),
        ],
      ),
    );
  }
}
