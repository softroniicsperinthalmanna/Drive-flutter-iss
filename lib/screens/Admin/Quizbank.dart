import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../../widgets/apptext.dart';
import '../../widgets/backbutton.dart';

class QuizbankScreen extends StatelessWidget {
  const QuizbankScreen({super.key});

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
        padding: const EdgeInsets.only(left: 30, top: 20, right: 30).r,
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 5).r,
                child: QuestionButton(
                    titile: "Upload New PDF",
                    click: () {
                      //Upload new pdf button Function........................
                    }),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: QuestionButton(
                    titile: "Create New",
                    click: () {
                      //Create new pdf button Function........................
                    }),
              )),
            ],
          ),
           Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20).r,
              child: const GridViewCard(),
            ),
          )
        ]),
      ),
    );
  }
}
// Grid View Question bank.......................................................
class GridViewCard extends StatelessWidget {
  const GridViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
    crossAxisSpacing: 12,
    mainAxisSpacing: 12),
      itemCount: 10,
      itemBuilder: (context, index) {
      return Container(
        height: 128.h,
        width: 153.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15).r,
            color: customgrey),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        const Icon(Icons.menu_book_outlined,color: btncolor,),
        Apptext3(text: "QB:001", textcolor: btncolor, size: 16.sp, weight: FontWeight.w500)
      ]),);
    }
    ,);
  }
}

// Question Button..........................................................
class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key,
    required this.titile,
    required this.click,
  });

  final String titile;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Container(
        height: 54.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r, color: btncolor),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Apptext3(
              text: titile,
              textcolor: backcolor,
              size: 11.sp,
              weight: FontWeight.w500),
          SizedBox(
            width: 10.w,
          ),
          const Icon(
            Icons.picture_as_pdf,
            color: backcolor,
          )
        ]),
      ),
    );
  }
}
