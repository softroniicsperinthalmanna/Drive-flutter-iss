import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionScreeen extends StatelessWidget { // Sample Question Screen..............................
  const QuestionScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 30).r,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Apptext3(
                text: "What is the meaning of UI UX Design ?",
                textcolor: btncolor,
                size: 16.sp,
                weight: FontWeight.w500),
            OptionTale(
              "B",
              "User Interfoce and User Experience",
            ),
            //Option tale.............................
            OptionTale(
              "C",
              "User Interfoce and User Experience",
            ),
            OptionTale(
              "D",
              "User Interfoce and User Experience",
            ),
            OptionTale(
              "E",
              "User Interfoce and User Experience",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100).r,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {

                      //Previous Button Function...........................
                    },
                    backgroundColor: btncolor,
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10).r,
                    child: Button(
                        btnname: "Submit Quiz",
                        btntheam: backcolor,
                        textcolor: btncolor,
                        outlinecolor: btncolor,
                        click: () {
                          //Submit Button function...........................


                        }),
                  )),
                  FloatingActionButton(
                    onPressed: () {

                      //Next Question Button function...........................
                    },
                    backgroundColor: Colors.grey,
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

//Option tale............................................................
  Widget OptionTale(String option, String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ).r,
      child: ListTile(
          leading: CircleAvatar(
            radius: 25.r,
            backgroundColor: Colors.grey,
            child: Apptext3(
                text: option,
                textcolor: backcolor,
                size: 18.sp,
                weight: FontWeight.w500),
          ),
          title: Apptext3(
              text: title,
              textcolor: btncolor,
              size: 14.sp,
              weight: FontWeight.w400)),
    );
  }
}
