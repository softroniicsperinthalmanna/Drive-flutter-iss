import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../../widgets/apptext.dart';
import '../../widgets/backbutton.dart';

class QuestionbankScreen extends StatelessWidget {
  const QuestionbankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 22).r,
          child: backbutton(),
        ),
        title: Apptext3(
            text: "Question Bank",
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 18, right: 18).r,
        child: ListView(children:  [
          Listtale(title:"Question Bank 1 ",click: (){}),// Custom List Tale................
          Listtale(title:"Question Bank 2 ",click: (){}),// Custom List Tale................
          Listtale(title:"Question Bank 3 ",click: (){}),// Custom List Tale................
          Listtale(title:"Question Bank 4 ",click: (){}),// Custom List Tale................
        ]),
      ),
    );
  }
}

// Custom List tale....................................
class Listtale extends StatelessWidget {
  const Listtale({
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
                text: "10 Question",
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
