import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants/screenwidth.dart';
import 'package:url_launcher/url_launcher.dart';

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
        child: SizedBox(
          height:280,
          width: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left:0,
                right:0,
                top:0,
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
                  margin: const EdgeInsets.all(10),
                  child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
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
                        ),
                ),
              ),
              Positioned(
                    right:60,
                    bottom:0,
                    child: Container(
                      height:220,
                      width:220,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(110),
                      image: const DecorationImage(image: AssetImage('assets/images/myformalpic.png'),fit:BoxFit.cover)),
                      
                    )),
              Positioned(
                top:30,
                  left:30,
                  child: Row(
                children: [
                  InkWell(
                    child: Image.asset('assets/images/linkedin.png',fit: BoxFit.cover,),
                    onTap: () async{
                      const url = 'https://www.linkedin.com/in/sarahasan17';
                      if(await canLaunch(url)){
                        await launch(url);
                      }else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    child: SvgPicture.asset(
                      'assets/images/s1.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 100,
                      width: 70,
                    ),,
                    onTap: () async{
                      const url = 'https://www.linkedin.com/in/sarahasan17';
                      if(await canLaunch(url)){
                        await launch(url);
                      }else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Image.asset('assets/images/linkedin.png'),
                    onTap: () async{
                      const url = 'https://www.linkedin.com/in/sarahasan17';
                      if(await canLaunch(url)){
                        await launch(url);
                      }else {
                        throw 'Could not launch $url';
                      }
                    },
                  )
                ],
              )),
            ],
          ),
        ),
      ));
  }
}


