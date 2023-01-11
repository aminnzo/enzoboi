import 'package:enzoboi/utils/constants.dart';
import 'package:enzoboi/widgets/hello.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  static const String routeName = "/";
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: HelloSlide(),
    );
  }
}
