import 'package:driven/home.dart';
import 'package:driven/screens/Common/AfterotpScreen.dart';
import 'package:driven/screens/LoginScreen.dart';
import 'package:driven/screens/Students/MainScreen.dart';
import 'package:driven/screens/Students/MydocumentScreen.dart';
import 'package:driven/screens/Students/MysessionStudent.dart';
import 'package:driven/screens/Common/OtpScreen.dart';
import 'package:driven/screens/Students/PackagesScreen.dart';
import 'package:driven/screens/Students/QuestionbankScreen.dart';
import 'package:driven/screens/Students/QuizScreen1.dart';
import 'package:driven/screens/Students/QuizScreen2.dart';
import 'package:driven/screens/Students/RegisterScreen.dart';
import 'package:driven/screens/Common/SplashScreen.dart';
import 'package:driven/screens/Common/StudentLogin.dart';
import 'package:driven/screens/Students/StudentProfile.dart';
import 'package:driven/screens/Common/WelcomeScreen.dart';
import 'package:driven/screens/Students/TrailAppoints.dart';
import 'package:driven/screens/Tutor/AdddocumentScreen.dart';
import 'package:driven/screens/Tutor/MyStudent.dart';
import 'package:driven/screens/Tutor/Mysession1.dart';
import 'package:driven/screens/Tutor/Mysession2.dart';
import 'package:driven/screens/Tutor/MysessionFinshed.dart';
import 'package:driven/screens/Tutor/Mysessionall.dart';
import 'package:driven/screens/Tutor/Mystudentall.dart';
import 'package:driven/screens/Tutor/Mystudentold.dart';
import 'package:driven/screens/Tutor/StudentProfile.dart';
import 'package:driven/screens/Tutor/TutoProfile.dart';
import 'package:driven/screens/Tutor/TutorRegister.dart';
import 'package:driven/screens/Tutor/Mysessionpending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
          //screen util package for adaptive
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme:
                const AppBarTheme(color: Colors.transparent, elevation: 0),
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: true,
          ),
          home: MysessionScreen()),
      designSize: Size(375, 812),
    );
  }
}