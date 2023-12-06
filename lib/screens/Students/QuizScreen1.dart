import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizScreen1 extends StatelessWidget {
  const QuizScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: btncolor,
        body: Column(children: [
          SizedBox(
            height: 224.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 40, right: 24).r,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const backbutton(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15).r,
                      child:  Apptext3(
                          text: "Hello, User",
                          textcolor: backcolor,
                          size: 14.sp,
                          weight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15).r,
                      child:  Apptext3(
                          text: "Let's test your knowledge",
                          textcolor: backcolor,
                          size: 20.sp,
                          weight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15).r,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15).r,
                              child: SizedBox(
                                  height: 32.h,
                                  // Search Text Field...............................
                                  child: TextFormField(
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
                                          prefixIcon: Icon(Icons.search),
                                          hintText: "Search Services",
                                          hintStyle: TextStyle(fontSize: 13.sp),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5.h, horizontal: 15.w),
                                          filled: true,
                                          fillColor: textfldcolor))),
                            ),
                          ),
                          const Icon(
                            Icons.filter_alt_rounded,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    )
                  ]),
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20).r,
              child: Column(children: [
                Container(
                  height: 4.h,
                  width: 48.w,
                  color: btncolor,
                ),
                // Tab bar ...................................
                Padding(
                  padding: EdgeInsets.only(top: 15).r,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      isScrollable: true,
                      indicatorWeight: 10,
                      unselectedLabelColor: Colors.grey,
                      labelColor: btncolor,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: UnderlineTabIndicator(
                        borderSide:
                            const BorderSide(width: 3.0, color: btncolor),
                        insets: EdgeInsets.symmetric(vertical: 10.h),
                      ),
                      indicatorPadding: EdgeInsets.symmetric(vertical: 10.h),
                      tabs: const [
                        Tab(child: Text("Beginer")),
                        Tab(child: Text("Simple")),
                        Tab(child: Text("Medium")),
                        Tab(child: Text("Hard"))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                //const Expanded(child: TabBarView(children: []))
              ]),
            ),
          )),
        ]),
      ),
    );
  }
}
