import 'package:canadoreino/models/page_manager.dart';
import 'package:canadoreino/pages/login_screen.dart';
import 'package:canadoreino/shared/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreenAndroid extends StatefulWidget {
  BaseScreenAndroid({Key key}) : super(key: key);

  @override
  _BaseScreenAndroidState createState() => _BaseScreenAndroidState();
}

class _BaseScreenAndroidState extends State<BaseScreenAndroid> {
  
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
          create: (_) => PageManager(pageController),
          child: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            
            LoginScreen(),

            Scaffold(
              drawer: CustomDrawer(),
              appBar: AppBar(
                title: const Text('Home'),
              ),
            ),

            Scaffold(
              drawer: CustomDrawer(),
              appBar: AppBar(
                title: const Text('Produtos'),
              ),
            ),
            Scaffold(
              drawer: CustomDrawer(),
              appBar: AppBar(
                title: const Text('Meus pedidos'),
              ),
            ),

            Scaffold(
              drawer: CustomDrawer(),
              appBar: AppBar(
                title: const Text('Lojas'),
              ),
            ),
            
          ],
        ),
    );
  }
}