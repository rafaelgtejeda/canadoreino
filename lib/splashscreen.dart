
import 'dart:io' show Platform;

import 'package:canadoreino/pages/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenTela extends StatelessWidget {

  const SplashScreenTela({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
     seconds: 7,
     navigateAfterSeconds: BaseScreenAndroid(),
     title: new Text('Sítio Cana do Reino',
        style: new TextStyle(
         color: Colors.white,
         fontWeight: FontWeight.bold,
         fontSize: 33.0
       ),
     ),
     image: new Image.asset('images/logo/logo.png'),
     gradientBackground: new LinearGradient(colors: [Colors.white, Colors.white], begin: Alignment.topLeft, end: Alignment.bottomRight),
     backgroundColor: Colors.white,
     styleTextUnderTheLoader: new TextStyle(),
     photoSize: 100.0,
     loaderColor: Colors.green[900],
     loadingText: new Text('Carregando...',
        style: new TextStyle(
         color: HexColor('#d7be39'),        
         fontSize: 16.0
       ),
    ),
        );
  }
}