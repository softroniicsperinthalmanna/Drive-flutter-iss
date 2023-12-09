import 'package:driven/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/Mainscreencard.dart';
import '../../widgets/apptext.dart';

class AdminMainScreen extends StatelessWidget {
  const AdminMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30)
                    .r,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                          onTap: () {
                            // notification icon function.......................................
                          },
                          child: const Icon(
                            Icons.notifications,
                            color: backcolor,
                          ))),
                  SizedBox(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Apptext2(
                              text: "Perinthalmanna",
                              textcolor: backcolor,
                              size: 40.sp,
                              weight: FontWeight.w500),
                          Apptext3(
                              text: "ISS COLLEGE DRIVING SCHOOL",
                              textcolor: backcolor,
                              size: 18.sp,
                              weight: FontWeight.w500),
                        ]),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15).r,
                          child: SizedBox(
                              height: 32.h,
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
                                      hintText: "Search Services",
                                      hintStyle: TextStyle(fontSize: 13.sp),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5.h, horizontal: 15.w),
                                      filled: true,
                                      fillColor: textfldcolor))),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            // Search function....................................
                          },
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 23,
                          ))
                    ],
                  )
                ]),
          ),
        ),
        //Admin Options Grid View......................................................
        Expanded(
            child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20).r,
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
              children: [
                MianBox(title: "Students", icon: Icons.groups, click: () {}),
                //Custom Container Box.............................
                MianBox(title: "Tutors", icon: Icons.group, click: () {}),
                MianBox(
                    title: "Vehicles",
                    icon: Icons.drive_eta_rounded,
                    click: () {}),
                MianBox(
                    title: "Sessions", icon: Icons.date_range, click: () {}),
                MianBox(
                    title: "Trials",
                    icon: Icons.calendar_month_sharp,
                    click: () {}),
                MianBox(
                    title: "Question Banks",
                    icon: Icons.menu_book,
                    click: () {}),
                MianBox(title: "Quiz", icon: Icons.leaderboard, click: () {}),
                MianBox(
                    title: "Notification",
                    icon: Icons.notifications,
                    click: () {}),
              ],
            ),
          ),
        ))
      ]),
    );
  }
}

class MianBox extends StatelessWidget {  //box...............
  const MianBox({
    super.key,
    required this.icon,
    required this.title,
    required this.click,
  });

  final IconData icon;
  final String title;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Container(
        height: 128.h,
        width: 153.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15).r, color: customgrey),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: btncolor,
                size: 35,
              ),
              Apptext3(
                  text: title,
                  textcolor: btncolor,
                  size: 16.sp,
                  weight: FontWeight.w500)
            ]),
      ),
    );
  }
}
