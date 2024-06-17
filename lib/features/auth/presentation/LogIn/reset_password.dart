import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/auth/presentation/login/login_view.dart';
import 'package:selaty_app/features/auth/presentation/Login_Or_Signup/widgets/custom_auth_top_row.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_button.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_form.dart';
import 'package:short_navigation/short_navigation.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomTopRow(
                  color: Colors.black,
                  onPressedBackArrow: () {
                    Go.to(const LoginView());
                  },
                  text: "تغيير كلمة المرور"),
              const SizedBox(
                height: 32,
              ),
              Text(
                "أدخل كلمة المرور الجديدة",
                style: Styles.TextStyle16.copyWith(
                    color: Colors.grey, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomForm(
                text: "كلمة المرور الحالية",
                icon: Icon(Icons.visibility),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomForm(
                text: "كلمة المرور جديدة",
                icon: Icon(Icons.visibility),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomButton(
                text: "تغيير",
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
