import 'package:driven/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/MystudentTale.dart';


class MystudentallScreen extends StatelessWidget {
  const MystudentallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 15).r,
        child: ListView.builder(itemBuilder: (context, index) {
          return SessionListtale(title: "Shibin Farhan", click: (){}); // custom session tale
        },
        itemCount: 4,),
      ),
    );
  }
}



