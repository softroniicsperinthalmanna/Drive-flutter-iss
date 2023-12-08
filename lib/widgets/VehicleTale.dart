import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class VehicleTale extends StatelessWidget {
  const VehicleTale({
    super.key,
    required this.vehiclename,
    required this.model,
    required this.tutorname,
    required this.location,
    required this.image,
  });

  final String vehiclename;
  final String model;
  final String tutorname;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: Container(
        height: 140.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r,
            border: Border.all(color: hashcolor)),
        child: Row(children: [
          Expanded(
              child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10).r,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Apptext3(
                        text: vehiclename,
                        textcolor: hashcolor,
                        size: 16.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 8.h,
                    ),
                    Apptext3(
                        text: model,
                        textcolor: hashcolor,
                        size: 10.sp,
                        weight: FontWeight.w400),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star_border, color: hashcolor),
                        SizedBox(
                          width: 5.w,
                        ),
                        Apptext3(
                            text: "Tutor :${tutorname}",
                            textcolor: hashcolor,
                            size: 10.sp,
                            weight: FontWeight.w400),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: hashcolor),
                        SizedBox(
                          width: 5.w,
                        ),
                        Apptext3(
                            text: "Branch :${location}",
                            textcolor: hashcolor,
                            size: 10.sp,
                            weight: FontWeight.w400),
                      ],
                    ),
                  ]),
            ),
          )),
          Expanded(
              child: SizedBox(
            child: Image.asset(image),
          ))
        ]),
      ),
    );
  }
}
