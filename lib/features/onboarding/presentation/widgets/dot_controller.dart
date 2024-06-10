import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty_app/core/controllers/onboarding_controller.dart';
import 'package:selaty_app/core/models/onboarding_model.dart';

class DotController extends StatelessWidget {
  const DotController({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) {
              return AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: onBoardingList[index].goNextButtonColor,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 1.5),
                duration: const Duration(milliseconds: 250),
                width: controller.currentPage == index ? 8 : 8,
                height: controller.currentPage == index ? 25 : 8,
              );
            },
          )
        ],
      ),
    );
  }
}
