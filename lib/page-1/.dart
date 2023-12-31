import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:smc/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // 6yF (523:3)
        width: double.infinity,
        height: 926*fem,
        child: Image.asset(
          'assets/page-1/images/-EwK.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}