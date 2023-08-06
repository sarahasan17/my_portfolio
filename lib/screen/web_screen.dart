import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants/screenwidth.dart';


class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenWidth s = ScreenWidth(context);
    const colorizeColors = [
      Color(0xFFa9acaf),
      Colors.white,
      Colors.black12
    ];
    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700
    );
    return Scaffold(
      backgroundColor: const Color(0xFF22272e),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
          margin: const EdgeInsets.all(10),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              margin: const EdgeInsets.all(18.0),
              child: AnimatedTextKit(
                stopPauseOnTap: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    'HI, THIS IS SARA',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'I AM AN APP DEVELOPER',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'I MAKE WEB APPS TOO',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            ],
          )
        ),
      ));
  }
}


