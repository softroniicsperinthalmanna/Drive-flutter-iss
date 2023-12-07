import 'package:driven/constants/color.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/apptext.dart';
import '../../widgets/backbutton.dart';
import 'Queston.dart';

class QuizScreen3 extends StatelessWidget {
  const QuizScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: btncolor,
        body: Column(children: [
          SizedBox(
            height: 160.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 8, right: 24).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const backbutton(),
                      SizedBox(
                        width: 10.w,
                      ),
                      Apptext3(
                          text: "Driving School",
                          textcolor: backcolor,
                          size: 18.sp,
                          weight: FontWeight.w500),
                    ],
                  ),
                  Container(
                    height: 24.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16).r,
                        color: backcolor),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.access_time_rounded,
                            color: btncolor,
                            size: 16,
                          ),
                          Apptext3(
                              text: "16:35",
                              textcolor: btncolor,
                              size: 14.sp,
                              weight: FontWeight.w400)
                        ]),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(30).r,
                    topLeft: const Radius.circular(30).r),
                color: backcolor),
            child: Padding(
              padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 20, bottom: 20)
                  .r,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 4.h,
                      width: 48.w,
                      color: btncolor,
                    ),

                  //  Tab Bar.............................................................................
                    Padding(
                      padding: const EdgeInsets.only(top: 15).r,
                      child: TabBar(
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        labelColor: backcolor,
                        indicatorColor: Colors.grey,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: btncolor),
                        tabs: [
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("1"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("2"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("3"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("4"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("5"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("6"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("7"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("8"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("9"),
                          )),
                          Tab(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5, right: 5).r,
                            child: const Text("10"),
                          ))
                        ],
                      ),
                    ),
                   //Tab bar view......................................................................
                    const Expanded(child: TabBarView(children: [
                      QuestionScreeen(),QuestionScreeen(),
                      QuestionScreeen(),QuestionScreeen(),
                      QuestionScreeen(),QuestionScreeen(),
                      QuestionScreeen(),QuestionScreeen(),
                      QuestionScreeen(),QuestionScreeen(),


                    ])),

                  ]),
            ),
          )),
        ]),
      ),
    );
  }
}
