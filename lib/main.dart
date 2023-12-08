import 'package:driven/home.dart';
import 'package:driven/screens/Admin/AdPackage.dart';
import 'package:driven/screens/Admin/AddNewTrail.dart';
import 'package:driven/screens/Admin/AddStudent.dart';
import 'package:driven/screens/Admin/AddTutor.dart';
import 'package:driven/screens/Admin/AddVehicle.dart';
import 'package:driven/screens/Admin/AdminMainScreen.dart';
import 'package:driven/screens/Admin/AdminProfile.dart';
import 'package:driven/screens/Admin/AdminSession.dart';
import 'package:driven/screens/Admin/AddNewSession.dart';
import 'package:driven/screens/Admin/Quiz.dart';
import 'package:driven/screens/Admin/SendNotification.dart';
import 'package:driven/screens/Admin/Studentlist.dart';
import 'package:driven/screens/Admin/Quizbank.dart';
import 'package:driven/screens/Admin/StudentListAll.dart';
import 'package:driven/screens/Admin/TutorList.dart';
import 'package:driven/screens/Admin/UpdateStudent.dart';
import 'package:driven/screens/Admin/UpdateTutor.dart';
import 'package:driven/screens/Common/AfterotpScreen.dart';
import 'package:driven/screens/Admin/LoginScreen.dart';
import 'package:driven/screens/SkipUser/DocumentScreen.dart';
import 'package:driven/screens/SkipUser/SkipUserMain.dart';
import 'package:driven/screens/Students/MainScreen.dart';
import 'package:driven/screens/Students/MydocumentScreen.dart';
import 'package:driven/screens/Students/MysessionStudent.dart';
import 'package:driven/screens/Common/OtpScreen.dart';
import 'package:driven/screens/Students/PackagesScreen.dart';
import 'package:driven/screens/Students/QuestionList.dart';
import 'package:driven/screens/Students/QuestionbankScreen.dart';
import 'package:driven/screens/Students/Queston.dart';
import 'package:driven/screens/Students/QuizPanel.dart';
import 'package:driven/screens/Students/QuizScreen1.dart';
import 'package:driven/screens/Students/QuizScreen2.dart';
import 'package:driven/screens/Students/QuizScreen3.dart';
import 'package:driven/screens/Students/RegisterScreen.dart';
import 'package:driven/screens/Common/SplashScreen.dart';
import 'package:driven/screens/Common/StudentLogin.dart';
import 'package:driven/screens/Students/StudentProfile.dart';
import 'package:driven/screens/Common/WelcomeScreen.dart';
import 'package:driven/screens/Students/Studentsessionall.dart';
import 'package:driven/screens/Students/TrailAppoints.dart';
import 'package:driven/screens/Tutor/AdddocumentScreen.dart';
import 'package:driven/screens/Tutor/EditSessionall.dart';
import 'package:driven/screens/Tutor/MyStudent.dart';
import 'package:driven/screens/Tutor/Mysession1.dart';
import 'package:driven/screens/Tutor/Mysession2.dart';
import 'package:driven/screens/Tutor/MysessionFinshed.dart';
import 'package:driven/screens/Tutor/Mysessionall.dart';
import 'package:driven/screens/Tutor/Mystudentall.dart';
import 'package:driven/screens/Tutor/Mystudentold.dart';
import 'package:driven/screens/Tutor/StudentProfile.dart';
import 'package:driven/screens/Tutor/TuterMainScreen.dart';
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
          home: PackagesScreeen()),
      designSize: const Size(375, 812),
    );
  }
}


