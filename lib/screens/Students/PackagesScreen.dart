import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../../widgets/PackageBox.dart';
import '../../widgets/apptext.dart';
import '../../widgets/backbutton.dart';

class PackagesScreeen extends StatelessWidget {
  const PackagesScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 22).r,
          child: backbutton(),
        ),
        title: Apptext3(
            text: "Packages",
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: ListView(children: const [
          PackageBox(), //  Custom Package Card class.............................
          PackageBox(),//  Custom Package Card class.............................
          PackageBox(),//  Custom Package Card class.............................
          PackageBox()//  Custom Package Card class.............................
        ]),
      ),
    );
  }
}



