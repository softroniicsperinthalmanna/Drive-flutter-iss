// custom Dropdown Field......................................
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class CustomTextdrop extends StatelessWidget {
  CustomTextdrop({
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
                  borderRadius: BorderRadius
                      .circular(8)
                      .r),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: bordercolor),
                  borderRadius: BorderRadius
                      .circular(8)
                      .r),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: hashcolor))),
          items: list.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (newvalue) {

          }),
    );
  }
}
