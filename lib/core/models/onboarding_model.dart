import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class OnBoardingModel {
  final String image, title, desc, secondDesc;
  final Color titleColor, goNextButtonColor;
  OnBoardingModel(
    this.image,
    this.title,
    this.desc,
    this.secondDesc,
    this.titleColor,
    this.goNextButtonColor,
  );
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      Assets.imagesShop,
      "البحث يالقرب منك",
      "ابحث عن المتاجر المفضلة التي تريدها",
      "بموقعك او حيك",
      Colors.red,
      Colors.red),
  OnBoardingModel(
      Assets.imagesShop,
      "عروض طازجة وجودة",
      "جميع العناصر لها نضارة حقيقية وهي",
      "مخصصة لاحتياجك",
      Colors.green,
      Colors.green),
  OnBoardingModel(
      Assets.imagesVan,
      "تسليم سريع للمنزل",
      "جميع العناصر لها نضارة حقيقية وهي",
      "مخصصة لاحيتاجك",
      const Color(0xff726B8A),
      const Color(0xff726B8A)),
];
