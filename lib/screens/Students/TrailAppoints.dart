import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TrailPending.dart';
import 'Trailappoinmentall.dart';
import 'Trailfinshed.dart';

class TrailappointsScreen extends StatefulWidget {
  const TrailappointsScreen({super.key});

  @override
  State<TrailappointsScreen> createState() => _TrailappointsScreenState();
}

class _TrailappointsScreenState extends State<TrailappointsScreen> {
  @override
  List<String> droplist = [
    "type 1",
    "type 2",
    "type 3"
  ]; // drop down button list...........................
  String? selectedvalue; // drop down selected value..........................

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 22).r,
            child: backbutton(),
          ),
          title: Apptext3(
              text: "Trail Appoinments",
              textcolor: btncolor,
              size: 16.sp,
              weight: FontWeight.w500),
          centerTitle: true,
        ),
        backgroundColor: backcolor,
        body: Padding(
          padding: const EdgeInsets.all(22).r,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(
              height: 26,
              width: 84,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8).r, color: Colors.grey),
              child: Center(
                child: DropdownButton<String>(
                    hint: const Text("Type"),
                    underline: const SizedBox(),
                    value: selectedvalue,
                    items: droplist.map((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (newvalue) {
                      setState(() {
                        selectedvalue = newvalue;
                      });
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
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
                      text: "Finished",
                    ),
                    Tab(
                      text: "Pending",
                    ),
                  ],
                ),
              ),
            ),

            // Tab Bar view............................................
            const Expanded(
                child: TabBarView(children: [
              TrailallScreen(),
              TrailfinishScreen(),
              TrailPendingScreen()
            ]))
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              add(); //floating Action button function.......................
            },
            backgroundColor: btncolor,
            child: const Center(
                child: Icon(
              Icons.add,
              color: backcolor,
            ))),
      ),
    );
  }

  Future<void> add() async {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 213,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: btncolor),
            child: Padding(
              padding: const EdgeInsets.all(20).r,
              child: Column(children: [
                Text(
                  "APPLY FOR SESSION",
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: backcolor),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: SizedBox(
                      height: 36.h,
                      child: TextFormField(
                          // controller: ,text editing controller
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              hintText: "Vehicle Type",
                              hintStyle: TextStyle(fontSize: 15.sp),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 15.w),
                              filled: true,
                              fillColor: backcolor))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10).r,
                  child: SizedBox(
                      height: 36.h,
                      child: TextFormField(
                          // controller: ,text editing controller
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              hintText: "Select Time & Date",
                              hintStyle: TextStyle(fontSize: 15.sp),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 15.w),
                              filled: true,
                              fillColor: backcolor))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10).r,
                  child: Button(
                    btnname: "DONE",
                    btntheam: btncolor,
                    textcolor: backcolor,
                    outlinecolor: backcolor,
                    click: () {
                      //button pressed....................................
                    },
                    height: 36,
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
