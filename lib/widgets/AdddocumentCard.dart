import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class DocumentCrd extends StatelessWidget { // Add document Custom card .......................................................
  const DocumentCrd({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:15).r,
      child: SizedBox(
        height: 159.h,
        width: double.infinity,
        child: Column(children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20).r,
                          topRight: Radius.circular(20).r)
                          .r,
                      color: Colors.grey[400]))),
          Container(
            height: 42,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))
                    .r,
                color: boxcolor),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15).r,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Apptext3(
                        text: title,
                        textcolor: dark,
                        size: 13.sp,
                        weight: FontWeight.w500),
                    Row(
                      children: [
                        InkWell(
                            onTap:(){

                              //Edit button function........................................

                            },
                            child: Image.asset("assets/icons/edit.png")),
                        SizedBox(
                          width: 15.w,
                        ),
                        InkWell(
                            onTap: (){

                              // Delete Document Function.................................

                            },
                            child: Image.asset("assets/icons/del.png")),
                      ],
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
