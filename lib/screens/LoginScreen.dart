import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/backbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor, //backcolor comes constants dart file........................

      body: Padding(
        padding: const EdgeInsets.all(23).r,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const backbutton(),
              Align(
                alignment: Alignment.centerRight,
                  child: Image.asset("assets/icons/date.png")),//custom back button................
              SizedBox(
            height: 49.h,
              ),
              const Apptext(
              text: "ISS COLLEGE DRIVING SCHOOL", // Apptext is Custom text widget
              textcolor: dark,
              size: 30,
              weight: FontWeight.w700),
              SizedBox(
            height: 50.h,
              ),
              SizedBox(
              height: 50.h,
              child: TextFormField(
                  // controller: ,text editing controller...............................
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: dark),
                          borderRadius: BorderRadius.circular(8).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: dark),
                          borderRadius: BorderRadius.circular(8).r),
                      hintText: "Enter your ID",
                      hintStyle: TextStyle(fontSize: 18.sp),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 5.h, horizontal: 15.w),
                      filled: true,
                      fillColor: textfldcolor))),
              SizedBox(
            height: 10.h,
              ),
              SizedBox(
              height: 50.h,
              child: TextFormField(
                  // controller: ,text editing controller.....................................
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: dark),
                          borderRadius: BorderRadius.circular(8).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color:dark),
                          borderRadius: BorderRadius.circular(8).r),
                      suffixIcon: Image.asset("assets/icons/eye.png"),
                      hintText: "Enter your password",
                      hintStyle: TextStyle(fontSize: 18.sp),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 5.h, horizontal: 15.w),
                      filled: true,
                      fillColor: textfldcolor))),
              SizedBox(
            height: 60.h,
              ),
              Button(
              btnname: "Login",
              btntheam: btncolor,
              textcolor: Colors.white,
              outlinecolor: btncolor,
              click: ()
              {

                // Login function..................................

              }),
            ]),
          ),
        ),
      ),
    );
  }
}
