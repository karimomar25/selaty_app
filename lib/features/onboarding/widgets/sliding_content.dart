import 'package:flutter/material.dart';
import 'package:selaty_app/core/controllers/onboarding_controller.dart';
import 'package:selaty_app/core/models/onboarding_model.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/onboarding/widgets/dot_controller.dart';
import 'package:selaty_app/features/onboarding/widgets/go_next_button.dart';

class SlidingContent extends StatelessWidget {
  const SlidingContent({
    super.key,
    required this.controller,
  });

  final OnboardingControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      //pass the pageController to slide by button >> controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                onBoardingList[index].image,
                height: 100,
              ),
              const Spacer(
                flex: 1,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      style: Styles.TextStyle30Bold.copyWith(
                          color: onBoardingList[index].titleColor),
                      onBoardingList[index].title)),
              const SizedBox(
                height: 8,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      style: Styles.TextStyle24.copyWith(color: Colors.grey),
                      onBoardingList[index].desc)),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      style: Styles.TextStyle24.copyWith(color: Colors.grey),
                      onBoardingList[index].secondDesc)),
              const Spacer(
                flex: 3,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GoNextButton(
                    backGroundColor: onBoardingList[index].goNextButtonColor,
                  ),
                  const DotController(),
                ],
              )),
            ],
          ),
        );
      },
    );
  }
}
