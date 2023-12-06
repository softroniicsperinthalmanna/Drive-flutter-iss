import 'package:driven/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/MystudentTale.dart';
import '../../widgets/apptext.dart';

class MystudentnewScreen extends StatelessWidget {
  const MystudentnewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 15).r,
        child: ListView.builder(itemBuilder: (context, index) {
          return SessionListtale(title: "Shibin Farhan", click: (){});
        },
          itemCount: 4,),
      ),
    );
  }
}



