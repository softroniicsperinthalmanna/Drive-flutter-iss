import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
        SvgPicture.asset("assets/svg/splash.svg",fit: BoxFit.cover,),
        Positioned(
            top: 445.r, // r from screen util package
            left: 123.r,// r from screen util package
            right: 110.r,// r from screen util package
            child: SvgPicture.asset("assets/svg/Drivo.svg",)),
      ],)
    );
  }
}
