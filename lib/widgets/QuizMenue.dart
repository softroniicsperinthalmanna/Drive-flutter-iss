import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class QuizMenueButtons extends StatelessWidget {
  const QuizMenueButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      width: 330.w,
      child: Row(children: [
        Expanded(
          child: SizedBox(
            child: Column(children: [
              FloatingActionButton(
                mini: true,
                onPressed: () {
                  //Play again function.......................
                },
                backgroundColor: const Color(0xff1D7FA9),
                child: const Icon(
                  Icons.restart_alt_outlined,
                  color: backcolor,
                ),
              ),
              Apptext3(
                  text: "Play Again",
                  textcolor: btncolor,
                  size: 15.sp,
                  weight: FontWeight.w400),
              Padding(
                padding: const EdgeInsets.only(top: 10).r,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    //Generate pdf function..........................
                  },
                  backgroundColor: const Color(0xff37AFA1),
                  child: const Icon(
                    Icons.picture_as_pdf,
                    color: backcolor,
                  ),
                ),
              ),
              Apptext3(
                  text: "Generate PDF",
                  textcolor: btncolor,
                  size: 15.sp,
                  weight: FontWeight.w400)
            ]),
          ),
        ),
        Expanded(
            child: SizedBox(
          child: Column(children: [
            FloatingActionButton(
              mini: true,
              onPressed: () {
                //Review answer function.......................
              },
              backgroundColor: const Color(0xffCB9771),
              child: const Icon(
                Icons.remove_red_eye_outlined,
                color: backcolor,
              ),
            ),
            Apptext3(
                text: "Review Answer",
                textcolor: btncolor,
                size: 15.sp,
                weight: FontWeight.w400),
            Padding(
              padding: const EdgeInsets.only(top: 10).r,
              child: FloatingActionButton(
                mini: true,
                onPressed: () {
                  //Home function..................................
                },
                backgroundColor: const Color(0xffAD8AE8),
                child: const Icon(
                  Icons.home,
                  color: backcolor,
                ),
              ),
            ),
            Apptext3(
                text: "Home",
                textcolor: btncolor,
                size: 15.sp,
                weight: FontWeight.w400)
          ]),
        )),
        Expanded(
            child: SizedBox(
          child: Column(children: [
            FloatingActionButton(
              mini: true,
              onPressed: () {
                //Share score function.....................
              },
              backgroundColor: const Color(0xff6680DB),
              child: const Icon(
                Icons.share_outlined,
                color: backcolor,
              ),
            ),
            Apptext3(
                text: "Share Score",
                textcolor: btncolor,
                size: 15.sp,
                weight: FontWeight.w400),
            Padding(
              padding: const EdgeInsets.only(top: 10).r,
              child: FloatingActionButton(
                mini: true,
                onPressed: () {
                  //Leader board function.............................
                },
                backgroundColor: const Color(0xff5F6A6E),
                child: const Icon(
                  Icons.leaderboard,
                  color: backcolor,
                ),
              ),
            ),
            Apptext3(
                text: "Leaderboard",
                textcolor: btncolor,
                size: 15.sp,
                weight: FontWeight.w400)
          ]),
        ))
      ]),
    );
  }
}
