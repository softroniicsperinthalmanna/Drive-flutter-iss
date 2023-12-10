import 'package:driven/constants/color.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/CustomDropfield.dart';
import '../../widgets/CustomTextField.dart';
import '../../widgets/apptext.dart';
import '../../widgets/backbutton.dart';

class UpdateStudentScreen extends StatelessWidget {
  UpdateStudentScreen({super.key});

  @override
  List<String> Vehicle = ["Hevy", "Two Wheler"];

  // Text field Controllers...............................
  final name = TextEditingController();

  final address = TextEditingController();

  final age = TextEditingController();

  final sex = TextEditingController();

  final phone = TextEditingController();

  final mail = TextEditingController();

  final joindate = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10).r,
          child: const backbutton(),
        ),
        title: Apptext3(
            text: "Update Student",
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        centerTitle: true,
      ),
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, top: 20).r,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(children: [
                CircleAvatar(
                  radius: 60.r,
                  child: Image.asset("assets/images/propic.png"),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Apptext3(
                    text: "Id : PM64785",
                    textcolor: btncolor,
                    size: 16.sp,
                    weight: FontWeight.w500),
                Apptext3(
                    text: "Pass : MK0147258",
                    textcolor: btncolor,
                    size: 14.sp,
                    weight: FontWeight.w400),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextField(
                    hint: "Name", controller: name, validator: (value) {}),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(
                    hint: "Address",
                    controller: address,
                    validator: (value) {}),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      hint: "Age",
                      kebordtype: TextInputType.number,
                      controller: age,
                      validator: (value) {},
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                        child: CustomTextField(
                      hint: "Sex",
                      controller: sex,
                      kebordtype: TextInputType.number,
                      validator: (value) {},
                    )),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(
                    hint: "Phone Number",
                    kebordtype: TextInputType.phone,
                    controller: phone,
                    validator: (value) {}),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      hint: "Mail",
                      kebordtype: TextInputType.emailAddress,
                      controller: mail,
                      validator: (value) {},
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                        child: CustomTextField(
                      hint: "Join Date",
                      controller: joindate,
                      validator: (value) {},
                    )),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextdrop(
                  hint: "Heavy, Two Wheeler",
                  list: Vehicle,
                ),
                SizedBox(
                  height: 23.h,
                ),
                Button(
                    btnname: "SUBMIT",
                    btntheam: btncolor,
                    textcolor: backcolor,
                    outlinecolor: btncolor,
                    click: () {
                      // Submit function Function ...................................
                    })
              ]),
              Positioned(
                  top: 30.r,
                  left: 220.r,
                  child: FloatingActionButton(
                    onPressed: () {
                      // image picker function................................
                    },
                    mini: true,
                    backgroundColor: btncolor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: backcolor, width: 4),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.edit,
                      size: 18,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
