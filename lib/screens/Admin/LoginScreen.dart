import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/backbutton.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  final id = TextEditingController(); //textEditing controller.........
  final password = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Padding(
        padding:  const EdgeInsets.only(left: 10).r,
        child: const backbutton(),
      ),),
      backgroundColor: backcolor,
      //backcolor comes constants dart file........................

      body: Padding(
        padding: const EdgeInsets.only(left: 23,right: 23,top: 20).r,
        child: SingleChildScrollView(
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/icons/date.png")),
              //custom back button................
              SizedBox(
                height: 49.h,
              ),
               Apptext(
                  text: "ISS COLLEGE DRIVING SCHOOL",
                  // Apptext is Custom text widget
                  textcolor: dark,
                  size: 30.sp,
                  weight: FontWeight.w700),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                  height: 50.h,
                  child: TextFormField(
                      controller: id,//text editing controller...............................
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
                      controller:password ,//text editing controller.....................................
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: dark),
                              borderRadius: BorderRadius.circular(8).r),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: dark),
                              borderRadius: BorderRadius.circular(8).r),
                          suffixIcon: Icon(Icons.visibility_outlined),
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
                  // custom button....................
                  btnname: "Login",
                  btntheam: btncolor,
                  textcolor: Colors.white,
                  outlinecolor: btncolor,
                  click: () {
                    // Login function..................................
                  }),
            ]),
          ),
        ),
      ),
    );
  }
}
