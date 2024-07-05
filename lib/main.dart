import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:selaty_app/core/networking/firebase_notifcations.dart';
import 'package:selaty_app/features/caterogy/caterogy_view.dart';
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
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("4ffbfd69-7bc3-4feb-9798-b7426e234f60");
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String? screen;
    OneSignal.Notifications.addClickListener(
      (event) {
        final data = event.notification.additionalData;
        screen = data?["screen"];
        Go.navigatorKey.currentState?.pushNamed(screen!);
      },
    );
    return ScreenUtilInit(
      splitScreenMode: true,
      child: MaterialApp(
          routes: {
            "test": (context) => const Test(),
            "category": (context) => CaterogyView(),
          },
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
