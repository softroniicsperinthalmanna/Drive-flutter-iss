import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class TutorSessionTale extends StatelessWidget {
  const TutorSessionTale({
    super.key, required this.date, required this.day, required this.time, required this.status,
  });
  final String date;
  final String day;
  final String time;
  final bool status;// if status true false session is pending..........
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: Container(
        height: 100.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20).r, color:boxcolor),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 20,top: 10,bottom: 10).r,
          child: Row(children: [
            Expanded(
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Apptext2(
                          text: date,
                          textcolor: btncolor,
                          size: 16.sp,
                          weight: FontWeight.w500),
                      Apptext2(
                          text: day,
                          textcolor: btncolor,
                          size: 16.sp,
                          weight: FontWeight.w500),
                      Apptext2(
                          text: time,
                          textcolor: btncolor,
                          size: 16.sp,
                          weight: FontWeight.w500)
                    ],
                  ),
                )),
            Expanded(
                child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/icons/call.png",width: 15.w,),
                        Container(
                          height: 34.h,
                          width: 114.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8).r,
                              color: status==true?btncolor:Colors.red),
                          child:  Center(
                              child:status==true? Apptext2(
                                  text: "Finshed Session",
                                  textcolor: Colors.white,
                                  size: 13.sp,
                                  weight: FontWeight.w500):
                              Apptext2(
                                  text: "Pending Session",
                                  textcolor: Colors.white,
                                  size: 13.sp,
                                  weight: FontWeight.w500)
                          ),
                        )
                      ]),
                ))
          ]),
        ),
      ),
    );
  }
}

