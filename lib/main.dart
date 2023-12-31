import 'package:flutter/material.dart';
import 'package:my_portfolio/screen/web_screen.dart';
import 'constants/constants.dart';
import 'constants/screenwidth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          inputDecorationTheme: kDefaultInputDecorationTheme,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      home: const WebScreen()
    );
  }
}
