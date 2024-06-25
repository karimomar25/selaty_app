import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/auth/presentation/login/login_view.dart';
import 'package:selaty_app/features/auth/presentation/login_or_signup/login_or_signup_view.dart';
import 'package:selaty_app/features/auth/presentation/login_or_signup/widgets/custom_bottom_row.dart';
import 'package:selaty_app/features/auth/presentation/login_or_signup/widgets/custom_auth_top_row.dart';
import 'package:selaty_app/features/auth/presentation/signup/phone_auth.dart';
import 'package:selaty_app/features/auth/presentation/signup/widgets/custom_button.dart';
import 'package:selaty_app/features/auth/presentation/signup/widgets/custom_form.dart';
import 'package:selaty_app/features/auth/presentation/signup/widgets/social_media_button.dart';
import 'package:short_navigation/short_navigation.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    CustomTopRow(
                      color: Colors.black,
                      text: "",
                      onPressedBackArrow: () {
                        Go.backAndTo(const LoginOrSignUpView());
                      },
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
                    GestureDetector(
                        onTap: () {
                          Go.toReplace(const PhoneAuth());
                        },
                        child: const CustomButton(
                          // width: double.infinity,
                          text: "اشتراك",
                          color: Colors.green,
                        )),
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
                    GestureDetector(
                      onTap: () {
                        Go.to(const LoginView());
                      },
                      child: const CustomBottomRow(
                        text: "لديك حساب بالفعل",
                        text2: "تسجيل الدخول",
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  children: [
                    CustomTopRow(
                      color: Colors.black,
                      text: "",
                      onPressedBackArrow: () {
                        Go.backAndTo(const LoginOrSignUpView());
                      },
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const Align(
                      alignment: Alignment.center,
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
                      alignment: Alignment.center,
                      child: Text(
                        "أدخل بياناتك لادخال حساب جديد",
                        style: Styles.TextStyle14.copyWith(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomForm(
                          width: width / 3,
                          text: "عنوان البريد الالكتروني",
                          icon: const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        ),
                        CustomForm(
                          width: width / 3,
                          text: "الاسم",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomForm(
                          width: width / 3,
                          text: "تأكيد كلمة المرور",
                          icon: const Icon(Icons.visibility),
                        ),
                        CustomForm(
                          width: width / 3,
                          text: "كلمة المرور",
                          icon: const Icon(Icons.visibility),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    GestureDetector(
                        onTap: () {
                          Go.toReplace(const PhoneAuth());
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 75),
                          child: CustomButton(
                            text: "اشتراك",
                            color: Colors.green,
                          ),
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                        alignment: Alignment.center,
                        child: Text("او اشترك مع")),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 10,
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
                            flex: 10,
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
                    GestureDetector(
                      onTap: () {
                        Go.to(const LoginView());
                      },
                      child: const CustomBottomRow(
                        text: "لديك حساب بالفعل",
                        text2: "تسجيل الدخول",
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
