import 'dart:async';

import 'package:enzoboi/theme/app_text_style.dart';
import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/utils/routes.dart';
import 'package:flutter/material.dart';

class HelloSlide extends StatefulWidget {
  const HelloSlide({Key? key}) : super(key: key);

  @override
  State<HelloSlide> createState() => _HelloSlideState();
}

class _HelloSlideState extends State<HelloSlide> {
  String currentText = "";
  Duration changeDuration = const Duration(milliseconds: 278);

  @override
  void initState() {
    changeText();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        currentText,
        style: AppTextStyle.titleMedium(context),
      ),
    );
  }

  Future<void> changeText() async {
    int counter = 0;
    Timer.periodic(changeDuration, (timer) {
      if (counter == 9) {
        timer.cancel();
        Navigator.pushReplacementNamed(context, Routes.landing);
      }
      setState(() => currentText = helloTexts[counter]);
      counter++;
    });
  }

}
