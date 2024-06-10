import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class OnBoardingModel {
  final String image, title, desc;
  final Color titleColor, goNextButtonColor;
  OnBoardingModel(
    this.image,
    this.title,
    this.desc,
    this.titleColor,
    this.goNextButtonColor,
  );
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      Assets.imagesShop,
      "البحث بالقرب منك",
      "ابحث عن المتاجر المفضلة التي تريدها بموقعك او حيك",
      Colors.red,
      Colors.red),
  OnBoardingModel(
      Assets.imagesShop,
      "عروض طازجة وجودة",
      "جميع العناصر لها نضارة حقيقية وهي مخصصة لاحتياجاتك",
      Colors.green,
      Colors.green),
  OnBoardingModel(
      Assets.imagesVan,
      "تسليم سريع للمنزل",
      "جميع العناصر لها نضارة حقيقية وهي مخصصة لاحتياجاتك",
      const Color(0xff726B8A),
      const Color(0xff726B8A)),
];
