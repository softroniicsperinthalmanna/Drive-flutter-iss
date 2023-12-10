import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/StudentSessionTale.dart';
import '../../widgets/TuterSessiontale.dart';

class StudentsessionallScreen extends StatelessWidget { // Tutor session All screen........................
  const StudentsessionallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 15).r,
        child: ListView(children:  const [
          // Tutor Session tale is a Custom tale..............................
          StudentSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: true), // if status true true session is finished..........
          StudentSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: false),// if status true false session is pending..........
          StudentSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: false),// if status true false session is pending..........
          StudentSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: false),// if status true false session is pending..........
        ]),
      ),
    );
  }
}
