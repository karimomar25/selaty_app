import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/login_or_signup/presentation/SignUp/widgets/custom_button.dart';
import 'package:selaty_app/features/login_or_signup/presentation/SignUp/widgets/custom_form.dart';
import 'package:selaty_app/features/login_or_signup/presentation/SignUp/widgets/social_media_button.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
                  Icon(Icons.camera_alt_outlined),
                  Icon(Icons.arrow_back_ios),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "انشاء حساب جديد",
                  style: Styles.TextStyle30Bold,
                  textDirection: TextDirection.rtl,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "أدخل بياناتك لادخال حساب جديد",
                  style: Styles.TextStyle14.copyWith(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const CustomForm(
                text: "الاسم",
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
                text: "كلمة المرور",
                icon: Icon(Icons.visibility),
              ),
              SizedBox(
                height: 22.h,
              ),
              CustomButton(text: "اشتراك", color: Colors.green, onTap: () {}),
              const SizedBox(
                height: 25,
              ),
              const Text("او اشترك مع"),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 20,
                      child: SizedBox(
                        child: SocialMediaButton(
                            icon: FontAwesomeIcons.googlePlusG,
                            // iconSize: 25,
                            borderColor: Colors.red,
                            iconColor: Colors.red,
                            text: "Google",
                            texrColor: Colors.red,
                            onTap: () {}),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 20,
                      child: SizedBox(
                        child: SocialMediaButton(
                            icon: Icons.facebook,
                            borderColor: Colors.blue.shade900,
                            text: "Facebook",
                            texrColor: Colors.blue.shade900,
                            onTap: () {}),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text("تسجيل الدخول"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.blue,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  Text("لديك حستب بالفعل؟"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
