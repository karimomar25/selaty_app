import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:selaty_app/features/onboarding/presentation/onboarding_view.dart';

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
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // Define the default font family for the entire app
            fontFamily: 'Cairo',
          ),
          home: const OnboardingView()),
    );
  }
}
