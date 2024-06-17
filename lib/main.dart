import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty_app/features/fruit_caterogy/fruit_caterogy_view.dart';
import 'package:selaty_app/features/home/presentation/home_view.dart';
import 'package:short_navigation/short_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      child: MaterialApp(
          navigatorKey: Go.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Cairo',
          ),
          home: const FruitCaterogyView()),
    );
  }
}
