import 'dart:math';

import 'package:driven/constants/color.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23).r,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Align(
                          alignment: Alignment.centerLeft, child: backbutton()),
                      Padding(
                        padding: const EdgeInsets.only(top: 40).r,
                        child: CircleAvatar(
                            radius: 60.r,
                            backgroundImage:
                                AssetImage("assets/images/propic.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50).r,
                        child: SizedBox(
                            height: 50.h,
                            child: TextFormField(
                                // controller: ,text editing controller......................
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade300),
                                        borderRadius:
                                            BorderRadius.circular(8).r),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade300),
                                        borderRadius:
                                            BorderRadius.circular(8).r),
                                    hintText: "Enter Your Name",
                                    hintStyle: TextStyle(fontSize: 15.sp),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5.h, horizontal: 15.w),
                                    filled: true,
                                    fillColor: textfldcolor))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5).r,
                                child: SizedBox(
                                    height: 50.h,
                                    child: TextFormField(
                                        // controller: ,text editing controller....................
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.grey.shade300),
                                                borderRadius:
                                                    BorderRadius.circular(8).r),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.grey.shade300),
                                                borderRadius:
                                                    BorderRadius.circular(8).r),
                                            hintText: "Age",
                                            hintStyle:
                                                TextStyle(fontSize: 15.sp),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                    horizontal: 15.w),
                                            filled: true,
                                            fillColor: textfldcolor))),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5).r,
                                child: SizedBox(
                                    height: 50.h,
                                    child: TextFormField(
                                        // controller: ,text editing controller..............
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.grey.shade300),
                                                borderRadius:
                                                    BorderRadius.circular(8).r),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.grey.shade300),
                                                borderRadius:
                                                    BorderRadius.circular(8).r),
                                            hintText: "Sex",
                                            hintStyle:
                                                TextStyle(fontSize: 15.sp),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                    horizontal: 15.w),
                                            filled: true,
                                            fillColor: textfldcolor))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15).r,
                        child: SizedBox(
                            height: 50.h,
                            child: TextFormField(
                                // controller: ,text editing controller...........................
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade300),
                                        borderRadius:
                                            BorderRadius.circular(8).r),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade300),
                                        borderRadius:
                                            BorderRadius.circular(8).r),
                                    hintText: "Mail",
                                    hintStyle: TextStyle(fontSize: 15.sp),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5.h, horizontal: 15.w),
                                    filled: true,
                                    fillColor: textfldcolor))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15).r,
                        child: SizedBox(
                            height: 50.h,
                            child: TextFormField(
                                // controller: ,text editing controller..........................
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade300),
                                        borderRadius:
                                            BorderRadius.circular(8).r),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade300),
                                        borderRadius:
                                            BorderRadius.circular(8).r),
                                    hintText: "Phone Number",
                                    hintStyle: TextStyle(fontSize: 15.sp),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5.h, horizontal: 15.w),
                                    filled: true,
                                    fillColor: textfldcolor))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25).r,
                        child: Button(
                            btnname: "Submit",
                            btntheam: btncolor,
                            textcolor: backcolor,
                            outlinecolor: btncolor,
                            click: () {
                              // Submit button function....................
                            }),
                      )
                    ]),
                // Positioned(
                //     top: 135.r,
                //     right: 95.r,
                //     child: Stack(children: [
                //       Image.asset(
                //         "assets/images/img.png",
                //         width: 35.w,
                //       ),
                //     ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Image.asset("assets/images/img.png")
