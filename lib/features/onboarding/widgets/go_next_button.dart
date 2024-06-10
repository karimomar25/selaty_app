import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty_app/features/login_or_signup/presentation/Login_Or_Signup/login_or_signup_view.dart';

class GoNextButton extends StatelessWidget {
  const GoNextButton({super.key, required this.backGroundColor});
  final Color backGroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const LoginOrSignUpView());
      },
      child: CircleAvatar(
        backgroundColor: backGroundColor,
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

// if i want to navigate betwwen slides with the button ::

// class GoNextSlideButton extends GetView<OnboardingControllerImp> {
//   const GoNextSlideButton({super.key, required this.backGroundColor});
//   final Color backGroundColor;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         controller.goNext();
//       },
//       child: CircleAvatar(
//         backgroundColor: backGroundColor,
//         child: const Icon(
//           Icons.arrow_forward,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
