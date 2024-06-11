import 'package:flutter/material.dart';
import 'package:selaty_app/core/controllers/onboarding_controller.dart';
import 'package:selaty_app/core/models/onboarding_model.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/onboarding/presentation/widgets/dot_controller.dart';
import 'package:selaty_app/features/onboarding/presentation/widgets/go_next_button.dart';

class SlidingContent extends StatelessWidget {
  const SlidingContent({
    super.key,
    required this.controller,
  });

  final OnboardingControllerImp controller;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: onBoardingList[index].titleColor.withOpacity(.2),
                        shape: BoxShape.circle),
                    height: height / 3,
                    width: width / 1.7,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: onBoardingList[index].titleColor.withOpacity(.4),
                        shape: BoxShape.circle),
                    height: height / 4.5,
                    width: width / 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: onBoardingList[index].titleColor,
                        shape: BoxShape.circle),
                    height: height / 5.5,
                    width: width / 2.7,
                  ),
                  Image.asset(
                    onBoardingList[index].image,
                    height: height / 9,
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      textAlign: TextAlign.right,
                      style: Styles.TextStyle30Bold.copyWith(
                          color: onBoardingList[index].titleColor),
                      onBoardingList[index].title)),
              const SizedBox(
                height: 8,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      textAlign: TextAlign.right,
                      style: Styles.TextStyle24.copyWith(color: Colors.grey),
                      onBoardingList[index].desc)),
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
