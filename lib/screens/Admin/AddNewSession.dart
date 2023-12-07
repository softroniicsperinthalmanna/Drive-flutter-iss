import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewSessionScreen extends StatelessWidget {
  NewSessionScreen({super.key});

  @override
  List<String> Student = ["amal", "alan", "akhil"];
  List<String> Tutor = ["amal", "alan", "akhil"];
  List<String> Vehicle = ["car", "bike", "jeep"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10).r,
          child: backbutton(),
        ),
        title: Apptext3(
            text: "New Session",
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30.h,
            ),
            Apptext3(
                text: "Add New Session",
                textcolor: btncolor,
                size: 23.sp,
                weight: FontWeight.w500),
            SizedBox(
              height: 30.h,
            ),
            CustomTextdrop(
              Student: Student,
              hint: "Select Student",
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextdrop(
              Student: Tutor,
              hint: "Select Tutor",
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
                height: 56.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Select Time & Date",
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: hashcolor),
                          borderRadius: BorderRadius.circular(8).r),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: hashcolor),
                          borderRadius: BorderRadius.circular(8).r),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: hashcolor))),
                )),
            SizedBox(
              height: 10.h,
            ),
            CustomTextdrop(
              Student: Vehicle,
              hint: "Select Vehicle",
            ),
            SizedBox(
              height: 30.h,
            ),
            Button(
                btnname: "DONE",
                btntheam: btncolor,
                textcolor: backcolor,
                outlinecolor: btncolor,
                click: () {
                  // Done button................................................
                })
          ]),
        ),
      ),
    );
  }
}

// Custom Drpdown Text Field...................................................
class CustomTextdrop extends StatelessWidget {
  const CustomTextdrop({
    super.key,
    required this.Student,
    required this.hint,
  });

  final List<String> Student;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: DropdownButtonFormField(
          hint: Apptext(
              text: hint,
              textcolor: hashcolor,
              size: 15.sp,
              weight: FontWeight.w500),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: hashcolor),
                  borderRadius: BorderRadius.circular(8).r),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: hashcolor),
                  borderRadius: BorderRadius.circular(8).r),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: hashcolor))),
          items: Student.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (newvalue) {}),
    );
  }
}
