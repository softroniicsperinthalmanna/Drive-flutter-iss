import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/ProfileBox.dart';

class StudentprofileScreen extends StatelessWidget {
  const StudentprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 22).r,
          child: backbutton(),
        ),
        title: Apptext3(
            text: "Student",
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        centerTitle: true,
      ),
      backgroundColor: backcolor,
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset("assets/images/vect.png"),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 30).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80).r,
                  child: SizedBox(
                    width: 150.w,
                    child: CircleAvatar(
                      radius: 60.r,
                      child: Image.asset("assets/images/propic.png"),
                    ),
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.only(top: 15).r,
                  child: Apptext3(
                      text: "Zain Malik ",
                      textcolor: btncolor,
                      size: 16.sp,
                      weight: FontWeight.w500),
                ),
                Apptext3(
                    text: "ID:PM00786 ",
                    textcolor: Colors.grey,
                    size: 14.sp,
                    weight: FontWeight.w400),
                Apptext3(
                    text: "Joined 02/04/2023",
                    textcolor: Colors.grey,
                    size: 14.sp,
                    weight: FontWeight.w400),
                Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: Row(
                    children: [
                      Apptext3(
                          text: "Your overall progress is ",
                          textcolor: btncolor,
                          size: 18.sp,
                          weight: FontWeight.w300),
                      Apptext3(
                          text: "60%",
                          textcolor: btncolor,
                          size: 18.sp,
                          weight: FontWeight.w400)
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: Apptext3(
                        text: "Sessions & Reveiw",
                        textcolor: Colors.grey,
                        size: 24.sp,
                        weight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      profileBox("Session",Icons.date_range),
                      profileBox("Contact",Icons.call),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget profileBox(String title,IconData icon) {
    return Padding(
      padding:  EdgeInsets.all(5).r,
      child: Container(
                  height: 128.h,
                  width: 153.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15).r,
                      color: customgrey),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     Icon(icon,color: Colors.black,size: 40,),
                    Apptext3(
                        text: title,
                        textcolor: btncolor,
                        size: 16.sp,
                        weight: FontWeight.w500),
                  ]),
                ),
    );
  }
}
