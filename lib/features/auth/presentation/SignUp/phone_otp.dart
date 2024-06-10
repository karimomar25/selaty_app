import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_top_row.dart';

class PhoneOtp extends StatelessWidget {
  const PhoneOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomTopRow(text: "التحقق من الهاتف"),
              const SizedBox(
                height: 28,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text("أدخل الرمز الخاص بك هنا",
                    style: Styles.TextStyle16.copyWith(
                        color: Colors.grey.shade700)),
              ),
              const SizedBox(
                height: 32,
              ),
              Pinput(
                defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey))),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "لم يصل الكود؟",
                  style:
                      Styles.TextStyle16.copyWith(color: Colors.grey.shade700),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "اعادة ارسال رمز جديد",
                  style: Styles.TextStyle16.copyWith(color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
