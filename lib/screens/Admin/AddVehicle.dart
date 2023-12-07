import 'package:driven/constants/color.dart';
import 'package:driven/widgets/VehicleTale.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'VehicleAll.dart';

class AddVehicleScreen extends StatelessWidget {
  const AddVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 10).r,
            child: backbutton(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20).r,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 175.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r, color: btncolor),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40).r,
                  child: InkWell(
                    onTap: () {
                      // Add new Vehicle Function.............................
                    },
                    child: Container(
                      height: 95.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5).r,
                          color: Colors.grey),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Apptext3(
                                text: "Add New",
                                textcolor: backcolor,
                                size: 16.sp,
                                weight: FontWeight.w700),
                            Apptext3(
                                text: "Vehicle",
                                textcolor: backcolor,
                                size: 16.sp,
                                weight: FontWeight.w700)
                          ]),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20).r,
              child: Container(
                height: 73.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: backcolor,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5.1,
                          spreadRadius: 1.1,
                          color: Colors.grey,
                          offset: Offset(0, 4))
                    ]),
                //Tab bar.............................
                child: TabBar(
                  unselectedLabelColor: btncolor,
                  labelColor: backcolor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      // Creates border
                      color: Colors.grey),
                  //Change background color from here
                  tabs: const [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Two Wheeler",
                    ),
                    Tab(
                      text: "Four Wheeler",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15).r,
              child: Apptext3(
                  text: "Available vehicles",
                  textcolor: hashcolor,
                  size: 16.sp,
                  weight: FontWeight.w500),
            ),
            //Tab bar View.................................................
            const Expanded(
                child: TabBarView(children: [
              VehicleAllScreen(),
              VehicleAllScreen(),
              VehicleAllScreen(),
            ]))
          ]),
        ),
      ),
    );
  }
}
