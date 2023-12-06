import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class EditSessionTile extends StatelessWidget {
  const EditSessionTile({
    super.key, required this.date, required this.day, required this.time,
  });
  final String date;
  final String day;
  final String time;

  // if status true  session is pending and change color..........
  // else status is false session is finished change color....
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: Container(
        height: 115.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20).r, color:boxcolor),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 20,top: 10,bottom: 10).r,
          child: Row(
              children: [
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8).r,
                              child: Container(
                                height: 33.h,
                                width: 27.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8).r,
                                    color: btncolor),
                                child:  const Center(
                                   child: Icon(Icons.edit,color: backcolor,),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8).r,
                              child: Container(
                                height: 33.h,
                                width: 26.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8).r,
                                    color: btncolor),
                                child:  const Center(
                                  child: Icon(Icons.close_rounded,color: backcolor,),
                                ),
                              ),
                            ),
                            Container(
                              height: 33.h,
                              width: 26.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8).r,
                                  color: btncolor),
                              child:  const Center(
                                child: Icon(Icons.done_all,color: backcolor,),
                              ),
                            ),
                          ],
                        )
                      ]),
                ))
          ]),
        ),
      ),
    );
  }
}

