import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/buttons.dart';

class AfterotpScreen extends StatelessWidget {
  const AfterotpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23).r,
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const backbutton(), //custom back button...............
                  Container(
                    height: 35.h,
                    width: 98.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6).r, color: btncolor),
                    child:  Center(
                      child: Apptext(
                          text: "Skip",
                          textcolor: backcolor,
                          size: 15.sp,
                          weight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 60).r,
                child: Apptext(text: "Think about safety first! Then drive...", textcolor: dark, size: 30.sp, weight: FontWeight.w700),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 80).r,
                child: SizedBox(
                    height: 50.h,
                    child: TextFormField(
                      // controller: ,text editing controller
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8).r),
                            focusedBorder: OutlineInputBorder(
                                borderSide:  BorderSide(color:Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8).r),
                            hintText: "Enter your ID",
                            hintStyle: TextStyle(fontSize: 18.sp),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 15.w),
                            filled: true,
                            fillColor: textfldcolor))),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 10).r,
                child: SizedBox(
                    height: 50.h,
                    child: TextFormField(
                      // controller: ,text editing controller
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8).r),
                            focusedBorder: OutlineInputBorder(
                                borderSide:  BorderSide(color:Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8).r),
                            suffixIcon: Image.asset("assets/icons/eye.png"),
                            hintText: "Enter your password",
                            hintStyle: TextStyle(fontSize: 18.sp),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 15.w),
                            filled: true,
                            fillColor: textfldcolor))),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 60).r,
                child: Button(
                    btnname: "Login",
                    btntheam: btncolor,
                    textcolor: Colors.white,
                    outlinecolor: btncolor,
                    click: () {

                      //Login function......................

                    }),
              ),
              
              
              Padding(
                padding:  EdgeInsets.only(top: 15).r,
                child: InkWell(
                    onTap: (){

                      //Login as aTutor function .................

                    },
                    child: Text("Login as Tutor",style: TextStyle(color: btncolor,fontSize: 16.sp,fontWeight: FontWeight.w700,decoration: TextDecoration.underline,decorationColor: dark),))
              )
            ]),
          ),


        ),
      ),
    );
  }
}
