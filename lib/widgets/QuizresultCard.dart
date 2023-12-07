import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class QuizresultCard extends StatelessWidget {
  const QuizresultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 155.h,
      width:310.w,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10.0,spreadRadius: 1.1,color: btncolor)],
          borderRadius: BorderRadius.circular(30).r,
          color: backcolor),
      child:  Padding(
        padding: const EdgeInsets.all(15).r,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SizedBox(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5).r,
                          child:  CircleAvatar(radius: 10.r,backgroundColor: btncolor,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Apptext3(text: "100%", textcolor: btncolor, size: 20.sp, weight: FontWeight.w500),
                            Apptext3(text: "Completion", textcolor: btncolor, size: 16.sp, weight: FontWeight.w400),
                          ],
                        )
                      ],),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5).r,
                          child:  CircleAvatar(radius: 10.r,backgroundColor: btncolor,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Apptext3(text: "13", textcolor: btncolor, size: 20.sp, weight: FontWeight.w500),
                            Apptext3(text: "Correct", textcolor: btncolor, size: 16.sp, weight: FontWeight.w400),
                          ],
                        )
                      ],)
                    ]),

              )),Expanded(child: SizedBox(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5).r,
                          child:  CircleAvatar(radius: 10.r,backgroundColor: btncolor,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Apptext3(text: "20", textcolor: btncolor, size: 20.sp, weight: FontWeight.w500),
                            Apptext3(text: "Total Question", textcolor: btncolor, size: 16.sp, weight: FontWeight.w400),
                          ],
                        )
                      ],),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5).r,
                          child:  CircleAvatar(radius: 10.r,backgroundColor: btncolor,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Apptext3(text: "07", textcolor: btncolor, size: 20.sp, weight: FontWeight.w500),
                            Apptext3(text: "Wrong", textcolor: btncolor, size: 16.sp, weight: FontWeight.w400),
                          ],
                        )
                      ],)
                    ]),
              ))


            ]),
      ),);
  }
}
