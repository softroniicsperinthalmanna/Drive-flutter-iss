import 'package:driven/constants/color.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/Mainscreencard.dart';
import '../../widgets/apptext.dart';
import 'NotificationList.dart';
import 'StudentListAll.dart';

class SendNotification extends StatelessWidget {
  const SendNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10).r,
            child: const backbutton(),
          ),
        ),
        backgroundColor: backcolor,
        body: Column(children: [
          Container(
            height: 260.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                        bottomRight: const Radius.circular(20).r,
                        bottomLeft: const Radius.circular(20))
                    .r,
                color: btncolor),
            child: Padding(
              padding: const EdgeInsets.only(
                      top: 110, left: 20, right: 20, bottom: 30)
                  .r,
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Apptext2(
                        text: "Send notifications",
                        textcolor: backcolor,
                        size: 40.sp,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15).r,
                            child: SizedBox(
                                height: 32.h,
                                child: TextFormField(  //search text field.....................
                                    // controller: ,text editing controller...............................
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                const BorderSide(color: dark),
                                            borderRadius:
                                                BorderRadius.circular(8).r),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                const BorderSide(color: dark),
                                            borderRadius:
                                                BorderRadius.circular(8).r),
                                        hintText: "Search Tutors",
                                        hintStyle: TextStyle(fontSize: 13.sp),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 5.h, horizontal: 15.w),
                                        filled: true,
                                        fillColor: textfldcolor))),
                          ),
                        ),
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 23,
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20).r,
              child: Column(
                children: [
                  Container(
                    // Tab bar ..........................................
                    height: 30.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).r,
                      color: btncolor,
                    ),
                    child: TabBar(
                      unselectedLabelColor: boxcolor,
                      labelColor: btncolor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding:
                          EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          // Creates border
                          color: backcolor),
                      //Change background color from here
                      tabs: const [
                        Tab(
                          text: "All",
                        ),
                        Tab(
                          text: "Tutor",
                        ),
                        Tab(
                          text: "Student",
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                      child: TabBarView(children: [
                    NotificationListAll(),
                    NotificationListAll(),
                    NotificationListAll()
                  ]))
                ],
              ),
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: btncolor,
            child: const Center(
                child: Icon(
              Icons.add,
              color: backcolor,
            ))),
      ),
    );
  }
}
