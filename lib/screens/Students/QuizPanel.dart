import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/QuizMenue.dart';
import '../../widgets/QuizresultCard.dart';

class QuizpanelScreen extends StatelessWidget {
  const QuizpanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(leading: Padding(
        padding: const EdgeInsets.only(left: 10).r,
        child: backbutton(),
      ),title:Apptext3(
          text: "Driving School",
          textcolor: backcolor,
          size: 18.sp,
          weight: FontWeight.w500),),
        body: Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/images/quiz.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 360.h,
              width: double.infinity,
            ),
            Expanded(
              child: Container(
                // height: 760.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30).r,
                        topRight: Radius.circular(30).r),
                    color: backcolor),
              ),
            ),
          ],
        ),
        Positioned(
            top: 315.r,
            left: 35.r,
            child: QuizresultCard() //Quiz Result card.........................
            ),

        // Menue Buttons..................................................................................
        Positioned(
            bottom: 80.r,
            left: 25.r,
            child:
                QuizMenueButtons() //Quiz Menue Button Widget.................................
            ),
        // Positioned(
        //   top: 50.r,
        //   left: 18.r,
        //   child: Row(
        //     children: [
        //       backbutton(),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 15).r,
        //         child: Apptext3(
        //             text: "Driving School",
        //             textcolor: backcolor,
        //             size: 18.sp,
        //             weight: FontWeight.w500),
        //       )
        //     ],
        //   ),
        // ),
        Positioned(
          top: 150.r,
          left: 150.r,
          child: Column(children: [
            Apptext3(text: "your Score", textcolor: btncolor, size: 20.sp, weight: FontWeight.w500),
            Row(
              children: [
                Apptext3(text: "100", textcolor: btncolor, size: 32.sp, weight: FontWeight.w700),
                SizedBox(width: 5.w,),
                Apptext3(text: "pt", textcolor: btncolor, size: 20.sp, weight: FontWeight.w500),
              ],
            ),
          ],),
        )
      ],
    ));
  }
}
