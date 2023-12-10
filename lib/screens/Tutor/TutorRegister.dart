import 'dart:math';

import 'package:driven/constants/color.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TutorregisterScreen extends StatelessWidget {
  TutorregisterScreen({super.key});

  @override
  //Text Editing Controler...................................
  final name = TextEditingController();
  final age = TextEditingController();
  final sex = TextEditingController();
  final mail = TextEditingController();
  final phone = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23).r,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                      alignment: Alignment.centerLeft, child: backbutton()),
                  Padding(
                    padding: const EdgeInsets.only(top: 40).r,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 120.h,
                          width: 170.w,
                          child: CircleAvatar(
                            radius: 60.r,
                            child: Image.asset("assets/images/tuter.png"),
                          ),
                        ),
                        Positioned(
                            top: 30.r,
                            left: 120.r,
                            child: FloatingActionButton(
                              onPressed: () {
                                // image picker function................................
                              },
                              mini: true,
                              backgroundColor: btncolor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: backcolor, width: 4),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 50).r,
                    child: CustomTextfield(
                        hint: "Enter Your Name",
                        controller: name,
                        validator: (value) {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5).r,
                            child: CustomTextfield(
                                hint: "Age",
                                controller: age,
                                validator: (value) {}),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5).r,
                            child: CustomTextfield(
                                hint: "Sex",
                                controller: sex,
                                validator: (value) {}),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: CustomTextfield(
                        hint: "Mail", controller: mail, validator: (value) {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: CustomTextfield(
                        hint: "Phone Number",
                        controller: phone,
                        validator: (value) {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25).r,
                    child: Button(
                        btnname: "Submit",
                        btntheam: btncolor,
                        textcolor: backcolor,
                        outlinecolor: btncolor,
                        click: () {
                          // Submit button function....................
                        }),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.hint,
      required this.controller,
      this.validator,
      this.kebordtype = TextInputType.text});

  final String hint;
  final TextInputType kebordtype;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50.h,
        child: TextFormField(
            controller: controller,
            //text editing controller......................
            validator: validator,
            keyboardType: kebordtype,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8).r),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8).r),
                hintText: hint,
                hintStyle: TextStyle(fontSize: 15.sp),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                filled: true,
                fillColor: textfldcolor)));
  }
}
