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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.camera_alt_outlined),
                Icon(Icons.arrow_back_ios),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Align(
              alignment: Alignment.topRight,
              child: const Text(
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
            const SizedBox(
              height: 16,
            ),
            const CustomForm(
              text: "الاسم",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomForm(
              text: "عنوان البريد الالكتروني",
              icon: Icon(
                Icons.add_task_sharp,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomForm(
              text: "كلمة المرور",
              icon: Icon(Icons.visibility),
            ),
            const SizedBox(
              height: 22,
            ),
            CustomButton(text: "اشتراك", color: Colors.green, onTap: () {}),
            const SizedBox(
              height: 38,
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
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
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
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
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
                Row(
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
                Text("لديك حستب بالفعل؟"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
