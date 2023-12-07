import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Tutor/MysessionFinshed.dart';
import '../Tutor/Mysessionall.dart';
import '../Tutor/Mysessionpending.dart';

class AdminSessionScreen extends StatefulWidget {
  const AdminSessionScreen({super.key});

  @override
  State<AdminSessionScreen> createState() => _AdminSessionScreenState();
}

class _AdminSessionScreenState extends State<AdminSessionScreen> {
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
              text: "My Sessions",
              textcolor: btncolor,
              size: 18.sp,
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
                  borderRadius: BorderRadius
                      .circular(8)
                      .r, color: Colors.grey),
              child: Center(
                child: DropdownButton<String>(
                    hint: Text("Type"),
                    underline: SizedBox(),
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
                  borderRadius: BorderRadius
                      .circular(5)
                      .r,
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
            const Expanded(
                child: TabBarView(children: [
                  MysessionallScreen(),
                  MysessionfinishScreen(),
                  MysessionPendingScreen()
                ]))
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {

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

}