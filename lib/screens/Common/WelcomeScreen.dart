import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 180,left: 23,right: 23).r,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, children: [
          Stack(
            children: [
              Image.asset("assets/images/logo.png",height: 250.h,),
              Positioned(
                  top: 180.r,
                  left: 100.r,
                  right: 100.r,
                  child: SvgPicture.asset("assets/svg/driivo.svg")),
            ],
          ),
          SizedBox(height: 10.h,),
          Button(
              btnname: "Login",
              btntheam: btncolor,
              textcolor: backcolor,
              outlinecolor: btncolor,
              click: () {

                // login button function

              }),
          SizedBox(
            height: 15.h,
          ),
          Button(
              btnname: "Register",
              btntheam: backcolor,
              textcolor: btncolor,
              outlinecolor: btncolor,
              click: () {

                // Text button function

              }),
          SizedBox(
            height: 160.h,
          ),
          Apptext(
              text: "By Continuing, you agree to our",
              textcolor: btncolor,
              size: 9.sp,
              weight: FontWeight.w400),
          InkWell(
            onTap: (){

              // text button function

            },
            child: Text(
              "Terms & Conditions",
              style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: dark,
                  decoration: TextDecoration.underline,
                  decorationColor: dark),
            ),
          )
        ]),
      ),
    );
  }
}
