import 'package:driven/constants/color.dart';
import 'package:driven/widgets/PersonTale.dart';
import 'package:flutter/material.dart';

class NotificationListAll extends StatelessWidget {
  const NotificationListAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backcolor ,
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
        return const PersonTale(persionname: "Shibin Farhan", session: "Tutor", date: "24-05-2023");
      },),
    );
  }
}
