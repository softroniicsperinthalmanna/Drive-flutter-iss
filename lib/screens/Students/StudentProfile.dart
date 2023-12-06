import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/ProfileBox.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset("assets/images/vect.png"),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 23, top: 30).r,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                backbutton(),
                                Text("Profile",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp)),
                                Image.asset("assets/icons/call.png")
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30).r,
                              child: Container(
                                height: 120.h,
                                width: double.infinity,
                                child: Row(children: [
                                  SizedBox(
                                    width: 150.w,
                                    child: CircleAvatar(
                                      radius: 60.r,
                                      child:
                                          Image.asset("assets/images/propic.png"),
                                    ),
                                  ),
                                  Expanded(
                                      child: SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                              top: 30, left: 20, bottom: 10)
                                          .r,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Apptext3(
                                                text: "Angelica Jackson",
                                                textcolor: dark,
                                                size: 16.sp,
                                                weight: FontWeight.w500),
                                            Apptext3(
                                                text: "Student",
                                                textcolor: dark,
                                                size: 14.sp,
                                                weight: FontWeight.w400),
                                            Apptext3(
                                                text: "Change profile",
                                                textcolor: dark,
                                                size: 12.sp,
                                                weight: FontWeight.w400),
                                          ]),
                                    ),
                                  )),
                                ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20).r,
                              child:  Apptext3(
                                  text: "Strong side:",
                                  textcolor: dark,
                                  size: 14.sp,
                                  weight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                buildContainer(70.w, "Analytics"),
                                buildContainer(96.w, "Perfectionism"),
                                buildContainer(70.w, "Analytics"),
                              ],
                            ),
                          ]),
                    ),
                    Positioned(
                        top: 120.r,
                        left: 120.r,
                        child: Image.asset("assets/images/editpic.png",width: 40.w,))
                  ],
                ),
                SizedBox(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        Padding(
                          padding:  EdgeInsets.only(top: 15).r,
                          child: Container(height: 4,width: 115,color: dark,),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 20).r,
                          child: Apptext3(
                              text: "My Reports:",
                              textcolor: btncolor,
                              size: 24.sp,
                              weight: FontWeight.w300),
                        ),
                      ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 20.h),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ProfileBox(
                              title: "My Performance",
                              subtitle:
                                  "Some short description of this type of report.",
                              image: "assets/icons/men.png"),
                          ProfileBox(
                              title: "My Documents",
                              subtitle:
                                  "Some short description of this type of report.",
                              image: "assets/icons/checkk.png")
                        ],
                      ),
                      Column(
                        children: [
                          ProfileBox(
                            title: "My Tutor",
                            subtitle:
                                "Some short description of this type of report.",
                            image: "assets/icons/cal.png",
                            bookmark: true,
                          ),
                          ProfileBox(
                            title: "Refer My Friend",
                            subtitle:
                                "Some short description of this type of report.",
                            image: "assets/icons/love.png",
                            bookmark: true,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildContainer(double width, String title) => Padding(
        //Container function.............................
        padding: const EdgeInsets.only(right: 10, top: 10).r,
        child: Container(
          height: 30.h,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8).r, color: customgrey),
          child: Center(
              child: Apptext3(
                  text: title,
                  textcolor: btncolor,
                  size: 12.sp,
                  weight: FontWeight.w500)),
        ),
      );
}
