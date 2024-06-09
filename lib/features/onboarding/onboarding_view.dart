import 'package:flutter/material.dart';
import 'package:selaty_app/core/models/onboarding_model.dart';
import 'package:selaty_app/core/utils/styles.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Spacer(),
                  Image.asset(
                    onBoardingList[index].image,
                    height: 100,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                          style: Styles.TextStyle30Bold.copyWith(
                              color: Colors.red),
                          onBoardingList[index].title)),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                          style:
                              Styles.TextStyle24.copyWith(color: Colors.grey),
                          onBoardingList[index].desc)),
                  Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
