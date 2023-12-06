import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class backbutton extends StatelessWidget {
  const backbutton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 51.h,width: 51.w,
        child: Image.asset("assets/icons/back.png"));
  }
}