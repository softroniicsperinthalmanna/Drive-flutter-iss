import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class Button extends StatelessWidget {
   Button({
    super.key,
    required this.btnname,
    required this.btntheam,
    required this.textcolor,
    required this.outlinecolor,
    required this.click,
    this.height=56,
  });

  final String btnname;
  final Color btntheam;
  final Color outlinecolor;
  final Color textcolor;
  final double height;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Container(
        height: height.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8).r,
            color: btntheam,
            border: Border.all(
              color: outlinecolor,
              width: 1,
            )),
        child: Center(
          child: Apptext(
              text: btnname,
              textcolor: textcolor,
              size: 15.sp,
              weight: FontWeight.w600),
        ),
      ),
    );
  }
}
