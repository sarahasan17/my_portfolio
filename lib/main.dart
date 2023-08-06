import 'package:flutter/material.dart';
import 'package:my_portfolio/screen/web_screen.dart';
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
      theme: ThemeData(scaffoldBackgroundColor: Colors.cyanAccent),
      home: const WebScreen()
    );
  }
}
