import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty_app/features/login_or_signup/presentation/Login_Or_Signup/login_or_signup_view.dart';
import 'package:selaty_app/features/login_or_signup/presentation/SignUp/signup_view.dart';
import 'package:selaty_app/features/onboarding/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // Define the default font family for the entire app
            fontFamily: 'Cairo',
          ),
          home: const SignupView()),
    );
  }
}
