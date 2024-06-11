import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty_app/core/utils/app_images.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/Home/presentation/home_view.dart';
import 'package:selaty_app/features/auth/presentation/LogIn/reset_password.dart';
import 'package:selaty_app/features/auth/presentation/Login_Or_Signup/widgets/custom_bottom_row.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/signup_view.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_button.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Icon(Icons.camera_alt_outlined),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  Image.asset(
                    Assets.imagesBattikhaKart,
                    height: 100,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "سلـــــــــتي",
                        style:
                            Styles.TextStyle30Bold.copyWith(color: Colors.red),
                      ),
                      const Text(
                        "S    E    L    A    T    Y",
                        style: Styles.TextStyle16Bold,
                      ),
                    ],
                  ),
                  const Spacer()
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 8.h,
              ),
              const CustomForm(
                text: "عنوان البريد الالكتروني",
                icon: Icon(
                  Icons.add_task_sharp,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              const CustomForm(
                text: "كلمة السر",
                icon: Icon(Icons.visibility),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    "هل نسيت كلمة السر",
                    style: Styles.TextStyle16.copyWith(color: Colors.black),
                  ),
                  onPressed: () {
                    Get.to(const ResetPassword());
                  },
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const HomeView());
                },
                child: const CustomButton(
                  text: "تسجيل الدخول",
                  color: Colors.green,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(const SignupView());
                  },
                  child: const CustomBottomRow(
                      text: "ليس لديك حساب؟", text2: "أنشئ حساب"))
            ],
          ),
        ),
      ),
    );
  }
}
