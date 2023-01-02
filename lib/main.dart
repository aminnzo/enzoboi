import 'package:enzoboi/utils/custom_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amin Enzo',
      // theme: themeData,
      initialRoute: "/",
      onGenerateRoute: generateRoute,
    );
  }
}