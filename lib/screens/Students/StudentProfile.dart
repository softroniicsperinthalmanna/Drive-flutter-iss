import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../widgets/ProfileBox.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10).r,
          child: const backbutton(),
        ),
        title: Apptext3(
            text: "Profile",
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        centerTitle: true,
        actions: [Image.asset("assets/icons/call.png")],
      ),
      backgroundColor: backcolor,
      body: Stack(
        children: [
          Image.asset("assets/images/vect.png"),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 23, top: 100).r,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                        child: Image.asset(
                                            "assets/images/propic.png"),
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
                                child: Apptext3(
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
                          top: 60.r,
                          left: 120.r,
                          child: FloatingActionButton(
                            onPressed: () {
                              // image picker function................................
                            },
                            mini: true,
                            backgroundColor: btncolor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: backcolor, width: 4.w),
                              borderRadius: BorderRadius.circular(50).r,
                            ),
                            child: const Icon(
                              Icons.edit,
                              size: 18,
                            ),
                          ))
                    ],
                  ),
                  Column(
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
                          padding: const EdgeInsets.only(top: 15).r,
                          child: LinearPercentIndicator( //Liner Percentage indicator.......................
                            lineHeight: 4,
                            backgroundColor: Colors.grey,
                            progressColor: btncolor,
                            animation: true,
                            animationDuration: 1000,
                            percent: 0.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20).r,
                          child: Apptext3(
                              text: "My Reports:",
                              textcolor: btncolor,
                              size: 24.sp,
                              weight: FontWeight.w300),
                        ),
                      ]),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child:
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            ProfileBox( //Custom Profile box...........................................
                                title: "My Performance",
                                subtitle:
                                    "Some short description of this type of report.",
                                image: "assets/icons/men.png"),
                            ProfileBox(//Custom Profile box...........................................
                                title: "My Documents",
                                subtitle:
                                    "Some short description of this type of report.",
                                image: "assets/icons/checkk.png")
                          ],
                        ),
                        Column(
                          children: [
                            ProfileBox(//Custom Profile box...........................................
                              title: "My Tutor",
                              subtitle:
                                  "Some short description of this type of report.",
                              image: "assets/icons/cal.png",
                              bookmark: true,//if book mark is true the book mark icon will shown on the box
                            ),
                            ProfileBox(//Custom Profile box...........................................
                              title: "Refer My Friend",
                              subtitle:
                                  "Some short description of this type of report.",
                              image: "assets/icons/love.png",
                              bookmark: true,//if book mark is true the book mark icon will shown on the box
                            )
                          ],
                        ),
                      ],
                    ),
                 ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  //Custom Box function.............................
  Widget buildContainer(double width, String title) => Padding(
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
