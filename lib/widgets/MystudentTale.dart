
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color.dart';
import 'apptext.dart';

class SessionListtale extends StatelessWidget {
  const SessionListtale({
    super.key, required this.title, required this.click,
  });
  final String title;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: ListTile(
          title: Apptext3(
              text: title,
              textcolor: btncolor,
              size: 17.sp,
              weight: FontWeight.w500),
          subtitle: Row(
            children: [
              Image.asset("assets/icons/note.png"),
              Apptext3(
                  text: "10 Sessions Finished",
                  textcolor: btncolor,
                  size: 14.sp,
                  weight: FontWeight.w400),
            ],
          ),
          trailing: Image.asset("assets/icons/arrow.png"),
          tileColor: boxcolor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).r)
      ),
    );
  }
}
