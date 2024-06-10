import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  goNext();
  onPageChanged(int pageIndex);
}

class OnboardingControllerImp extends OnboardingController {
  // create controller for slide by button>>> late PageController pageController;
  int currentPage = 0;

  @override
  goNext() {
    // IMPL of slide by button :
    // currentPage++;
    // pageController.animateToPage(currentPage,
    //     duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int pageIndex) {
    currentPage = pageIndex;
    update();
  }
// int func to give a value for the controller to slide by button :
  // void onInit() {
  //   pageController = PageController();
  // }
}
