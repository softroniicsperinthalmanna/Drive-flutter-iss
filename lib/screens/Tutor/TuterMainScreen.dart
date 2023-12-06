import 'package:driven/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../widgets/Mainscreencard.dart';
import '../../widgets/apptext.dart';

class TutermainScreen extends StatelessWidget {
  const TutermainScreen({super.key});

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
                      bottomRight: Radius.circular(20).r,
                      bottomLeft: Radius.circular(20))
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
                            // notification screen function.......................................
                          },
                          child: Image.asset("assets/icons/not.png"))),
                  SizedBox(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Apptext2(
                              text: "Hello User",
                              textcolor: backcolor,
                              size: 40.sp,
                              weight: FontWeight.w500),
                          Apptext2(
                              text: "Good Morning...!",
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
                      Icon(Icons.search,color: Colors.white,size: 25,)
                    ],
                  )
                ]),
          ),
        ),
        Expanded(
            child: SizedBox(
          child: ListView(children: [
            MainScreencard(
                title: "Students",
                subtitle: "Check your driving session here",
                img: "assets/images/phone.png",
                icon: false,
                click: () {
                  // Card click function .......................
                }), //Custom MainScreen card.............
            MainScreencard(
                title: "Online Exams",
                subtitle: "Test your Theory Exam Perfomance here",
                img: "assets/images/truck.png",
                click: () {
                  // Card click function .......................
                }), //Custom MainScreen card........
            MainScreencard(
                title: "Services",
                subtitle: "Motor Vehicle Online Services",
                img: "assets/images/doc.png",
                click: () {
                  // Card click function .......................
                }), //Custom MainScreen card.........
          ]),
        ))
      ]),
    );
  }
}
