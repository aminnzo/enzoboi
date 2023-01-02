import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = "/";
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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

