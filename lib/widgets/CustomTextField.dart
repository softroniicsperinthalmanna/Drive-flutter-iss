
//Custom TextField..........................................................
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.kebordtype = TextInputType.text,
    required this.controller,
    required this.validator,
  });

  final String hint;
  final TextInputType kebordtype;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56.h,
        child: TextFormField(
          controller:controller,
          validator:validator,
          decoration: InputDecoration(
              fillColor: textfldcolor,
              filled: true,
              hintText: hint,
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
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
        ));
  }
}

