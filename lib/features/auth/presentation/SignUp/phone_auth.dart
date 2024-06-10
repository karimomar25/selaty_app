import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/phone_otp.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_button.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_top_row.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/phone_number_form.dart';

class PhoneAuth extends StatelessWidget {
  const PhoneAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomTopRow(text: "تحقق من رقم الهاتف"),
              const SizedBox(
                height: 32,
              ),
              const Text(
                textAlign: TextAlign.right,
                "لقد أرسلنا رسالة نصية قصيرة تحتوي علي رمز الي رقم 01000000000",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(
                height: 32,
              ),
              const PhoneNumberForm(),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const PhoneOtp());
                },
                child: const CustomButton(
                  text: "تأكيد",
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
