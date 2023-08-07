import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants/screenwidth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:380,
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
                                    isRepeatingAnimation:false,
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
                                      ColorizeAnimatedText(
                                        'HI, THIS IS SARA',
                                        textStyle: colorizeTextStyle,
                                        colors: colorizeColors,
                                      ),
                                    ],
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
                        bottom:100,
                        child: Container(
                            padding: EdgeInsets.all(6.0),
                            height:220,
                            width:220,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(110),
                            border: Border.all(color: Colors.white,width:0.8),
                            color: const Color(0xFF22272e),),
                          child:ClipRRect(
                              borderRadius: BorderRadius.circular(110),
                              child: Image.asset('assets/images/myformalpic.png',fit: BoxFit.cover,)),
                        )),
                  /**Positioned(
                    top:38,
                      left:38,
                      child: Row(
                    children: [
                      InkWell(
                      child: SvgPicture.asset(
                        'assets/images/linkedin.svg',
                        height: 36,
                        width: 36,
                      ),
                        onTap: () async{
                          const url = 'https://www.linkedin.com/in/sarahasan17/';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/github.svg',
                          height: 38,
                          width: 38,
                        ),
                        onTap: () async{
                          const url = 'https://github.com/sarahasan17';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/leetcode.svg',
                          height: 35,
                          width: 35,
                        ),
                        onTap: () async{
                          const url = 'https://leetcode.com/sarahasan_17/';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/instagram.svg',
                          height: 33,
                          width: 33,
                        ),
                        onTap: () async{
                          const url = 'https://instagram.com/sarahasan_17';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      )
                    ],
                  )),**/
                  Positioned(
                    left:0,
                    top:220,
                    right:300,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
                      margin: const EdgeInsets.all(10),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('About',style:TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            color: Color(0xFFa9acaf)
                          )),
                          Container(
                            height: 180,
                            padding: const EdgeInsets.only(top:5),
                            child: AnimatedTextKit(
                              isRepeatingAnimation:false,
                                stopPauseOnTap: true,
                              animatedTexts: [
                                TyperAnimatedText('I am currently studying at VIT, Vellore. I am pursuing Btech in Computer science and Engineering. My dream is to become a Software Developer and contribute towards the development of a Technical organization. Since my childhood I have been fascinated by Technology. I am looking forward for a good internship opportunity which would help me work for my passion.',
                                    textStyle: const TextStyle(
                                        color: Color(0xFFa9acaf),
                                        fontSize: 15)),
                              ],
                              onTap: () {
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width:715,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
              margin: const EdgeInsets.all(10),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Connect with me:',style:TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFa9acaf)
                  )),
                  Row(
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/linkedin.svg',
                          height: 36,
                          width: 36,
                        ),
                        onTap: () async{
                          const url = 'https://www.linkedin.com/in/sarahasan17/';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/github.svg',
                          height: 38,
                          width: 38,
                        ),
                        onTap: () async{
                          const url = 'https://github.com/sarahasan17';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/leetcode.svg',
                          height: 35,
                          width: 35,
                        ),
                        onTap: () async{
                          const url = 'https://leetcode.com/sarahasan_17/';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/instagram.svg',
                          height: 33,
                          width: 33,
                        ),
                        onTap: () async{
                          const url = 'https://instagram.com/sarahasan_17';
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: const Divider(color: Color(0xFFa9acaf),thickness: 0.2,))

                ],
              ),
            ),
          ],
        ),
      ));
  }
}


