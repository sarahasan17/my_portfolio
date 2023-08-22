import 'package:flutter/cupertino.dart';
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
              height: s.height/1.5,
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
                        bottom:s.height/5,
                        child: Container(
                            padding: const EdgeInsets.all(6.0),
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
                    top:s.height/2.9,
                    right:s.width/3,
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
              width:s.width/1.54,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
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
            Container(
              width:s.width/1.54,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Skills:',style:TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFa9acaf)
                  )),
                  Row(
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/icons8-dart.svg',
                          height: 36,
                          width: 36,
                        ),
                        onTap: () async{
                          const url = 'https://dart.dev/';
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
                          'assets/images/icons8-python.svg',
                          height: 38,
                          width: 38,
                        ),
                        onTap: () async{
                          const url = 'https://www.python.org/';
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
                          'assets/images/icons8-java.svg',
                          height: 35,
                          width: 35,
                        ),
                        onTap: () async{
                          const url = 'https://www.w3schools.com/java/';
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
                          'assets/images/icons8-c++.svg',
                          height: 33,
                          width: 33,
                        ),
                        onTap: () async{
                          const url = 'https://en.wikipedia.org/wiki/The_C%2B%2B_Programming_Language';
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
            const SizedBox(height: 5,),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  Text('Work Experience:',style:TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFa9acaf)
                  )),

                ],
              ),
            ),
            Container(
              width:s.width/1.54,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset('assets/images/logo.png',fit: BoxFit.cover,)),
                    onTap: () async{
                      const url = 'https://www.linkedin.com/company/jaunnt/about/';
                      if(await canLaunch(url)){
                        await launch(url);
                      }else {
                        throw 'Could not launch $url';
                      }
                    },),
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('App Dev Intern',style:TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w100,
                          color: Colors.white70,
                      )),
                      const SizedBox(height: 2,),
                      const Text('Jaunnt · Internship',style:TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w100,
                        color: Colors.white70,
                      )),
                      const SizedBox(height: 3,),
                      const Text('Apr 2023 - Jun 2023 · 3 mos',style:TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      )),
                      const SizedBox(height: 3,),
                      const Text('Bangalore Urban, Karnataka, India · Remote',style:TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      )),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: s.width/1.9,
                        child: const Text('Developed the Application for a travel startup Jaunnt',style:TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        )),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: s.width/1.9,
                        child: RichText(
                          textScaleFactor: 1.1,
                          text: const TextSpan(
                            text:
                            'Skills : ',
                            style:TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                            children: [
                              TextSpan(
                                  text:
                                  'Android Development · iOS Development · State Management · bloc · Cubit · Flutter Development ',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white70,
                                  ),),
                            ],
                          ),),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: s.width/1.9,child: Row(
                        children: [
                      InkWell(
                      child: const Icon(CupertinoIcons.link,size: 22,color: Colors.white70,),
                          onTap: () async{
                            const url = 'https://drive.google.com/file/d/1CdEliqsV0cUQJiZLPbeNVDR4vuMprHAo/view?usp=sharing';
                            if(await canLaunch(url)){
                              await launch(url);
                            }else {
                              throw 'Could not launch $url';
                            }
                          },),
                          const SizedBox(width: 10,),
                          const Text('Internship Completion Certificate',style:TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          )),


                        ],
                      ),
                      )

                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  Text('Clubs and Chapters:',style:TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFa9acaf)
                  )),

                ],
              ),
            ),
            Container(
              width:s.width/1.54,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(color: const Color(0xFF2d333b),borderRadius: BorderRadius.circular(5.0)),
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset('assets/images/icons8-codechef-48.png',fit: BoxFit.cover,)),
                    onTap: () async{
                      const url = 'https://www.w3schools.com/java/';
                      if(await canLaunch(url)){
                        await launch(url);
                      }else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('CodeChef-VIT',style:TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w100,
                        color: Colors.white70,
                      )),
                      const SizedBox(height: 2,),
                      const Text('1 yr 6 mos',style:TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w100,
                        color: Colors.white70,
                      )),
                      const SizedBox(height: 3,),
                      const Text('Mar 2022 - Present · 1 yr 4 mos',style:TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      )),
                      const SizedBox(height: 3,),
                      const Text('Bangalore Urban, Karnataka, India · Remote',style:TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      )),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: s.width/1.9,
                        child: const Text('Developed the Application for a travel startup Jaunnt',style:TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        )),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: s.width/1.9,
                        child: RichText(
                          textScaleFactor: 1.1,
                          text: const TextSpan(
                            text:
                            'Skills : ',
                            style:TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                            children: [
                              TextSpan(
                                text:
                                'Android Development · iOS Development · State Management · bloc · Cubit · Flutter Development ',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white70,
                                ),),
                            ],
                          ),),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: s.width/1.9,child: Row(
                        children: [
                          InkWell(
                            child: const Icon(CupertinoIcons.link,size: 22,color: Colors.white70,),
                            onTap: () async{
                              const url = 'https://drive.google.com/file/d/1CdEliqsV0cUQJiZLPbeNVDR4vuMprHAo/view?usp=sharing';
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },),
                          const SizedBox(width: 10,),
                          const Text('Internship Completion Certificate',style:TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          )),


                        ],
                      ),
                      )

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
  }
}


