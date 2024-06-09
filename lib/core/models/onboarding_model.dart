import 'package:selaty_app/utils/app_images.dart';

class OnBoardingModel {
  final String image, title, desc;
  OnBoardingModel(this.image, this.title, this.desc);
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(Assets.imagesShop, "البحث يالقرب منك",
      "ابحث عن المواقع التي تريدها بموقعك او حيك"),
  OnBoardingModel(Assets.imagesShop, "عروض طازجة وجودة",
      "جميع العناصر لها نضارة حقيقية وهي مخصصة لاحتياجاتك"),
  OnBoardingModel(Assets.imagesVan, "تسليم سريع للمنزل",
      "جميع العناصر لها نضارة حقيقية وهي مخصصة لاحتياجاتك"),
];
