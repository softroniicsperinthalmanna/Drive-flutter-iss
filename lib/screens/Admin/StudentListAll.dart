import 'package:driven/constants/color.dart';
import 'package:driven/widgets/PersonTale.dart';
import 'package:flutter/material.dart';

class StudentListAll extends StatelessWidget {
  const StudentListAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return const PersonTale(
              persionname: "Shibin Farhan",
              session: "10 Sessions",
              date: "24-05-2023");
        },
      ),
    );
  }
}
