import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizScreen2 extends StatelessWidget {
  const QuizScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: btncolor,
      body: Column(children: [
        Stack(
          children: [
            SizedBox(
              height: 190.h,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 40, right: 24).r,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const backbutton(),
                          SizedBox(
                            width: 10.w,
                          ),
                          Apptext3(
                              text: "Detail Quiz",
                              textcolor: backcolor,
                              size: 18.sp,
                              weight: FontWeight.w500),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, bottom: 10).r,
                        child: Apptext3(
                            text: "Driving School Quiz",
                            textcolor: backcolor,
                            size: 18.sp,
                            weight: FontWeight.w500),
                      ),
                      Apptext3(
                          text: "GET 100 Points",
                          textcolor: backcolor,
                          size: 12.sp,
                          weight: FontWeight.w600),
                    ]),
              ),
            ),
            Positioned(
                top: 150.r,
                right: 20.r,
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Apptext3(
                        text: "4.8",
                        textcolor: backcolor,
                        size: 18.sp,
                        weight: FontWeight.w600)
                  ],
                ))
          ],
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
            padding: const EdgeInsets.only(left: 24, right: 24, top: 20,bottom: 20).r,
            child:
                SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 4.h,
                    width: 48.w,
                    color: btncolor,
                  ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: Apptext3(
                      text: "Brief explanation about this quiz",
                      textcolor: btncolor,
                      size: 16.sp,
                      weight: FontWeight.w700),
              ),
              const CustomTale(
                    image: "assets/icons/list.png",
                    title: "10 Question",
                    subtitle: "10 point for a correct answer"),
              const CustomTale(
                    image: "assets/icons/time.png",
                    title: "1 hour 15 min",
                    subtitle: "Total duration of the quiz"),
              const CustomTale(
                    image: "assets/icons/star.png",
                    title: "Win 10 star",
                    subtitle: "Answer all questions correctly"),
              SizedBox(
                  height: 20.h,
              ),
              Apptext3(
                    text:
                        "Please read the text below carefully so you can understand it",
                    textcolor: btncolor,
                    size: 14.sp,
                    weight: FontWeight.w700),
              Textrow(
                  "Please read the text below carefully so you can understand it",
              ),
              Textrow(
                  "Tap on options to select the correct answer",
              ),
              Textrow("Tap on the bookmark icon to save interesting questions"),
              Textrow(
                    "Click submit if you are sure you want to complete all the quizzes"),
            ]),
                ),
          ),
        )),
      ]),
    );
  }

//Custom Text Function................................
  Widget Textrow(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15).r,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10).r,
            child: const CircleAvatar(
              radius: 4,
              backgroundColor: btncolor,
            ),
          ),
          Expanded(
              child: Apptext3(
                  text: title,
                  textcolor: btncolor,
                  size: 14.sp,
                  weight: FontWeight.w400)),
        ],
      ),
    );
  }
}

// Custom List Tale......................................
class CustomTale extends StatelessWidget {
  const CustomTale({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Apptext3(
          text: title,
          textcolor: btncolor,
          size: 16.sp,
          weight: FontWeight.w500),
      subtitle: Apptext3(
          text: subtitle,
          textcolor: Colors.grey,
          size: 14.sp,
          weight: FontWeight.w400),
    );
  }
}
