import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty_app/core/controllers/onboarding_controller.dart';

import 'package:selaty_app/core/utils/app_images.dart';

import 'package:selaty_app/features/onboarding/presentation/widgets/sliding_content.dart';

class OnboardingView extends GetView<OnboardingControllerImp> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.imagesSplashBackground))),
        child: SafeArea(
          child: SlidingContent(controller: controller),
        ),
      ),
    );
  }
}
