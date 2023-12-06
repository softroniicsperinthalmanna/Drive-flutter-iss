import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class ProfileBox extends StatelessWidget {         // Student profile report custom cards...............................
  const ProfileBox({
    super.key, required this.title, required this.subtitle, required this.image,  this.bookmark=false,
  });

  final String title;
  final String subtitle;
  final String image;
  final bool bookmark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5).r,
      child: Stack(
        children: [
          Container(
            height: 128.h,
            width:153.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15).r,
                color: customgrey),
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 15,bottom: 20,right: 20).r,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(image),
                    Apptext3(text:title, textcolor: btncolor, size: 12.sp, weight: FontWeight.w500),
                    Apptext3(text: subtitle, textcolor: btncolor, size: 10.sp, weight: FontWeight.w400)
                  ]),
            ),),
       bookmark==true?
       Positioned(
           right: 10.r,
           child: Image.asset("assets/icons/bookmark.png")):SizedBox()
        ],
      ),
    );
  }
}
