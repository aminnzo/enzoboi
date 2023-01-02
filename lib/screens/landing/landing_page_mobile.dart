import 'package:flutter/material.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.indigo.shade900,
        ),
        child: const Center(
          child: Text(
            'Hi, I\'m Enzo M.',
            style: TextStyle(fontSize: 60),
          ),
        ),
      ),
    );
  }
}
