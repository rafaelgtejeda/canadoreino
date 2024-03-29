import 'package:canadoreino/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurante Sítio Cana do Reíno',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenTela(),
    );
  }
}
