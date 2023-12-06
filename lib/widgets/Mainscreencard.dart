import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class MainScreencard extends StatelessWidget { // Custom Main Screen card class............................
  const MainScreencard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.img,
    this.icon = true,
    required this.click,
  });

  final String title;
  final String subtitle;
  final String img;
  final bool icon;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 15).r,
      child: Container(
        height: 175.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20).r, color: boxcolor),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: SizedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Apptext2(
                          text: title,
                          textcolor: dark,
                          size: 25.sp,
                          weight: FontWeight.w500),
                      Apptext2(
                          text: subtitle,
                          textcolor: dark,
                          size: 15.sp,
                          weight: FontWeight.w500),
                      InkWell(
                        onTap: click,
                        // check now button function..................................
                        child: Container(
                          height: 39.h,
                          width: 138.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: btncolor),
                          child: Padding(
                            padding: const EdgeInsets.all(5).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Apptext2(
                                    text: "Check Now",
                                    textcolor: backcolor,
                                    size: 15.sp,
                                    weight: FontWeight.w500),
                                icon == true
                                    ? Image.asset("assets/icons/check.png")
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
              )),
              SizedBox(
                width: 160.w,
                child: Image.asset(img),
              )
            ],
          ),
        ),
      ),
    );
  }
}
