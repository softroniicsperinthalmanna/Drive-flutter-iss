import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});


  @override

  final defaultPinTheme = PinTheme(
    width: 70.h,
    height: 60.w,
    textStyle: const TextStyle(fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color:dark),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SafeArea(
          child:
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            const backbutton(),
             Padding(
                 padding:  EdgeInsets.only(top:30.h),
                 child: Apptext(
                    text: "OTP Verification",
                    textcolor: dark,
                    size: 30.sp,
                    weight: FontWeight.w700),
             ),

            Padding(
                padding:  EdgeInsets.only(top: 15.h),
                child: const Apptext(
                    text:
                        "Enter the verification code we just sent on your mobile number.",
                    textcolor:Color(0xff838BA1),
                    size: 16,
                    weight: FontWeight.w500),
            ),

            Padding(
                padding:  EdgeInsets.only(top:60.h),
                child: Align(
                    alignment: Alignment.center,
                    child: Pinput(length: 4,defaultPinTheme:defaultPinTheme )),// otp field.........
            ),

            Padding(
                padding:  EdgeInsets.only(top: 30.h),
                child: Button(
                    btnname: "Verify",
                    btntheam: btncolor,
                    textcolor: backcolor,
                    outlinecolor: btncolor,
                    click: () {}),
            ),

                   Padding(
                     padding:  EdgeInsets.symmetric(vertical: 30.h),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Apptext(text: "Didn’t received code? ", textcolor: dark, size: 15.sp, weight: FontWeight.w500),
                        InkWell(
                            onTap: (){

                              // Resend otp function...........

                            },
                            child: Apptext(text: "Resend", textcolor: dark, size: 15.sp, weight: FontWeight.w700)),
                      ],
                  ),
                   )
          ]),
              ),
        ),
      ),
    );
  }
}
