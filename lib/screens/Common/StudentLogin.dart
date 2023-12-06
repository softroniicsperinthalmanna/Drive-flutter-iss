import 'package:driven/constants/color.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StudentLogin extends StatelessWidget {
  const StudentLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding:
            const EdgeInsets.all(23).r,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: SvgPicture.asset("assets/svg/men.svg"),
            ),
            SizedBox(
              height: 90.h,
            ),
            SizedBox(
                height: 50.h,
                child: TextFormField(
                    // controller: ,text editing controller
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: dark),
                            borderRadius: BorderRadius.circular(8).r),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: dark),
                            borderRadius: BorderRadius.circular(8).r),
                        hintText: "Enter Phone Number",
                        hintStyle: TextStyle(fontSize: 18.sp),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                        filled: true,
                        fillColor: textfldcolor))),
            SizedBox(
              height: 20.h,
            ),
            Button(
                btnname: "Login",
                btntheam: btncolor,
                textcolor: backcolor,
                outlinecolor: btncolor,
                click: () {

                  // login function

                })
          ]),
        ),
      ),
    );
  }
}
