import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/TuterSessiontale.dart';

class MysessionfinishScreen extends StatelessWidget { // Tutor session Finshed screen........................
  const MysessionfinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding:  EdgeInsets.only(top: 15).r,
        child: ListView(children: const [
          // Tutor Session tale is a Custom tale..............................
          TutorSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: true), // if status true true session is finished..........
          TutorSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: true),// if status true false session is pending..........
          TutorSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: true),// if status true false session is pending..........
          TutorSessionTale(date: "13 - 03 - 2023", day: "Sunday", time: "12:00 AM", status: true),// if status true false session is pending..........
        ]),
      ),
    );
  }
}
