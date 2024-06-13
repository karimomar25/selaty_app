import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/auth/presentation/LogIn/login_view.dart';
import 'package:selaty_app/features/auth/presentation/Login_Or_Signup/widgets/login_or_signup_button.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/signup_view.dart';
import 'package:selaty_app/core/utils/app_images.dart';
import 'package:short_navigation/short_navigation.dart';

class LoginOrSignUpView extends StatelessWidget {
  const LoginOrSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Spacer(),
                Column(
                  children: [
                    Text(
                      "سلـــــــــتي",
                      style: Styles.TextStyle30Bold.copyWith(color: Colors.red),
                    ),
                    const Text(
                      "S  E  L  A  T  Y",
                      style: Styles.TextStyle16Bold,
                    ),
                  ],
                ),
                Image.asset(
                  Assets.imagesBattikhaKart,
                  height: 100,
                ),
                const Spacer()
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            LoginOrSignUpCustomButton(
                onTap: () {
                  Go.toReplace(const LoginView());
                },
                text: "تسجيل الدخول",
                color: Colors.red),
            const SizedBox(
              height: 16,
            ),
            LoginOrSignUpCustomButton(
                onTap: () {
                  Go.toReplace(const SignupView());
                },
                text: "انشئ حساب",
                color: Colors.green),
          ],
        ),
      ),
    );
  }
}
