import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class PackageBox extends StatelessWidget {
  const PackageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: Container(
        height: 150.h,
        width: 340.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20).r, color: btncolor),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15).r,
          child: Row(
            children: [
              Expanded(
                  child: SizedBox(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Apptext2(
                              text: "Package 1",
                              textcolor: backcolor,
                              size: 20.sp,
                              weight: FontWeight.w500),
                          Padding(
                            padding: const EdgeInsets.only(top: 10).r,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/round.png",
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10).r,
                                  child: Apptext2(
                                      text: "Voice messages anywhere",
                                      textcolor: backcolor,
                                      size: 9.sp,
                                      weight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5).r,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/round.png",
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10).r,
                                  child: Apptext2(
                                      text: "Voice messages anywhere",
                                      textcolor: backcolor,
                                      size: 9.sp,
                                      weight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5).r,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/round.png",
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10).r,
                                  child: Apptext2(
                                      text: "Voice messages anywhere",
                                      textcolor: backcolor,
                                      size: 9.sp,
                                      weight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5).r,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/round.png",
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10).r,
                                  child: Apptext2(
                                      text: "Voice messages anywhere",
                                      textcolor: backcolor,
                                      size: 9.sp,
                                      weight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ]),
                  )),
              SizedBox(
                width: 150.w,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, bottom: 20).r,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext2(
                            text: "\$2999",
                            textcolor: Colors.yellow,
                            size: 24.sp,
                            weight: FontWeight.w500),
                        Container(
                          height: 29.h,
                          width: 114.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8).r,
                              color: customgrey),
                          child: Center(
                              child: Apptext2(
                                  text: "Purchase Package",
                                  textcolor: btncolor,
                                  size: 13.sp,
                                  weight: FontWeight.w500)),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
