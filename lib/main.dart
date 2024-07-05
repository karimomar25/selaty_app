import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty_app/core/networking/firebase_notifcations.dart';
import 'package:selaty_app/features/notification_test/test.dart';
import 'package:selaty_app/features/onboarding/presentation/onboarding_view.dart';
import 'package:selaty_app/firebase_options.dart';
import 'package:short_navigation/short_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseNotifcations().initNotications();

  runApp(DevicePreview(builder: (context) => const MyApp()));
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      child: MaterialApp(
          routes: {"test": (context) => Test()},
          locale: DevicePreview.locale(context),
          navigatorKey: Go.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Cairo',
          ),
          home: const OnboardingView()),
    );
  }
}
