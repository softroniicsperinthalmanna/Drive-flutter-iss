import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../widgets/ProfileBox.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backcolor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10).r,
          child: backbutton(),
        ),
        title: Text("Profile",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500, fontSize: 16.sp, color: btncolor)),
        actions: [Icon(Icons.notifications,color: btncolor,size: 30,),SizedBox(width: 10.w,)],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/vect.png"),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 23, top: 100).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20).r,
                      child: CircleAvatar(
                        radius: 60.r,
                        child: Image.asset("assets/images/sch.png"),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Apptext3(
                        text: "PM124524524",
                        textcolor: btncolor,
                        size: 12.sp,
                        weight: FontWeight.w400),
                    SizedBox(
                      height: 5.h,
                    ),
                    Apptext3(
                        text: "Perinthalmanna Branch",
                        textcolor: btncolor,
                        size: 16.sp,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 5.h,
                    ),
                    Apptext3(
                        text: "ISS COLLEGE DRIVING SCHOOL",
                        textcolor: btncolor,
                        size: 14.sp,
                        weight: FontWeight.w400)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ).r,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Apptext3(
                          text: "Contact",
                          textcolor: btncolor,
                          size: 14.sp,
                          weight: FontWeight.w500)),
                ),
                Row(
                  children: [
                    buildContainer(70.w, "Head Office"),// custom container function.......................
                    buildContainer(96.w, "Manager"),
                    buildContainer(70.w, "Kottakkal"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30).r,
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
                  child: LinearPercentIndicator(
                    lineHeight: 4,
                    backgroundColor: Colors.grey,
                    progressColor: btncolor,
                    animation: true,
                    animationDuration: 1000,
                    percent: 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20).r,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Apptext3(
                        text: "More...",
                        textcolor: btncolor,
                        size: 24.sp,
                        weight: FontWeight.w300),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: GridView(
                      padding: EdgeInsets.zero,
                      physics: BouncingScrollPhysics(),
                      //shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 0),
                      children: const [
                        ProfileBox(
                            title: "My Performance",
                            subtitle:
                                "Some short description of this type of report.",
                            image: "assets/icons/men.png"),
                        ProfileBox(
                            title: "My Documents",
                            subtitle:
                                "Some short description of this type of report.",
                            image: "assets/icons/checkk.png"),
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
                        ),
                        
                      ],
                    ),
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
