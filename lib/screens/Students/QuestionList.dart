import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionListScreen extends StatelessWidget {
  const QuestionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return const QuizTale(Quizname: "Quiz 1");
          },
          itemCount: 10,
        ));
  }
}


//Quiz List Tale Custom Widgets..................................................
class QuizTale extends StatelessWidget {
  const QuizTale({
    super.key,
    required this.Quizname,
  });

  final String Quizname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: ListTile(
        shape: const RoundedRectangleBorder(side: BorderSide(color: btncolor)),
        tileColor: Colors.white,
        leading: Container(
          height: 72.h,
          width: 72.w,
          color: Colors.grey[300],
        ),
        title: Apptext3(
            text: Quizname,
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        subtitle: Column(
          children: [
            Row(children: [
              const Icon(
                Icons.featured_play_list_rounded,
                color: Colors.grey,
                size: 15,
              ),
              Apptext3(
                  text: " 10 Question",
                  textcolor: Colors.grey,
                  size: 14.sp,
                  weight: FontWeight.w400),
            ]),
            Row(children: [
              const Icon(
                Icons.access_time_rounded,
                color: Colors.grey,
                size: 15,
              ),
              Apptext3(
                  text: " 1 hour 15 min",
                  textcolor: Colors.grey,
                  size: 14.sp,
                  weight: FontWeight.w400),
            ]),
          ],
        ),
        trailing: Wrap(
          spacing: 10, // space between two icons
          children: <Widget>[
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ), // icon-1
            Apptext3(
                text: "4.8",
                textcolor: btncolor,
                size: 16.sp,
                weight: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}
