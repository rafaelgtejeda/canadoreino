import 'dart:math';
import 'package:canadoreino/shared/widgets/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BezierContainer extends StatelessWidget {
  
  const BezierContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: -pi / 3.5, 
        child: ClipPath(
          clipBehavior: Clip.antiAlias,
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height *.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(               
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [HexColor('#46531d'), HexColor('#272e10')]
              )
            ),
        ),
      ),
      )
    );
  }
}