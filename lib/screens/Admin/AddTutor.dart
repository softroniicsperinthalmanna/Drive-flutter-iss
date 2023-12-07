import 'package:driven/constants/color.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/apptext.dart';
import '../../widgets/backbutton.dart';

class AddTutorScreen extends StatelessWidget {
  AddTutorScreen({super.key});

  @override
  List<String> Vehicle = ["Hevy", "Two Wheler"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10).r,
          child: const backbutton(),
        ),
        title: Apptext3(
            text: "Add Tutor",
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
                CircleAvatar(radius: 60.r,child: Image.asset("assets/images/tuter.png"),),
                SizedBox(height: 30.h,),
                CustomTextField(hint: "Name"),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(hint: "Address"),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    const Expanded(child: CustomTextField(hint: "Age",kebordtype: TextInputType.number,)),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(child: CustomTextField(hint: "Sex")),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                const CustomTextField(hint: "Phone Number",kebordtype: TextInputType.phone),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    const Expanded(child: CustomTextField(hint: "Mail",kebordtype: TextInputType.emailAddress,)),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(child: CustomTextField(hint: "Join Date")),
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
                Button(btnname: "SUBMIT", btntheam: btncolor, textcolor: backcolor, outlinecolor: btncolor, click: (){
                  // Submit function Function ...................................
                })
              ]),
              Positioned(
                  top: 30.r,
                  left: 220.r,
                  child:FloatingActionButton(
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
                    child: const Icon(Icons.edit,size: 18,),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

//Custom TextField..........................................................
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,  this.kebordtype=TextInputType.text,
  });

  final String hint;
  final TextInputType kebordtype;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56.h,
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: textfldcolor,
              filled: true,
              hintText: hint,
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: bordercolor),
                  borderRadius: BorderRadius.circular(8).r),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: bordercolor),
                  borderRadius: BorderRadius.circular(8).r),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: hashcolor))),
        ));
  }
}

// custom Dropdown Field......................................
class CustomTextdrop extends StatelessWidget {
  const CustomTextdrop({
    super.key,
    required this.list,
    required this.hint,
  });

  final List<String> list;
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
                  borderSide: const BorderSide(color: bordercolor),
                  borderRadius: BorderRadius.circular(8).r),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: bordercolor),
                  borderRadius: BorderRadius.circular(8).r),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: hashcolor))),
          items: list.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (newvalue) {}),
    );
  }
}
