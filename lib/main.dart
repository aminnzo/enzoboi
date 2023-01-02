import 'package:enzoboi/services/url_strategy/url_strategy.dart';
import 'package:enzoboi/utils/custom_router.dart';
import 'package:flutter/material.dart';

void main() {
  setPathUrlStrategy();
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AE-M Portfolio',
      // theme: themeData,
      initialRoute: "/",
      onGenerateRoute: generateRoute,
    );
  }
}