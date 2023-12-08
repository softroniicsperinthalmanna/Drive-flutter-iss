import 'package:driven/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'apptext.dart';

class PersonTale extends StatelessWidget {
  const PersonTale({
    super.key,
    required this.persionname,
    required this.session,
    required this.date,
  });

  final String persionname;
  final String session;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: ListTile(
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: btncolor),
              borderRadius: BorderRadius.circular(2).r),
          tileColor: Colors.white,
          leading: Container(
            height: 72.h,
            width: 72.w,
            color: Colors.grey[300],
          ),
          title: Apptext3(
              text: persionname,
              textcolor: btncolor,
              size: 16.sp,
              weight: FontWeight.w500),
          subtitle: Column(
            children: [
              Row(children: [
                const Icon(
                  Icons.featured_play_list_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
                Apptext3(
                    text: session,
                    textcolor: Colors.grey,
                    size: 14.sp,
                    weight: FontWeight.w400),
              ]),
              Row(children: [
                const Icon(
                  Icons.access_time_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
                Apptext3(
                    text: date,
                    textcolor: Colors.grey,
                    size: 14.sp,
                    weight: FontWeight.w400),
              ]),
            ],
          ),
          trailing: const Icon(
            Icons.arrow_circle_right,
            color: btncolor,
          )),
    );
  }
}
