import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Center(child: Text(s.width.round().toString(),style: const TextStyle(color: Colors.pinkAccent),)),
    );
  }
}


