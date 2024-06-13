import 'package:flutter/material.dart';

class DiscountsModel {
  final String discount;
  final Color itemColor;

  DiscountsModel({required this.discount, required this.itemColor});
}

List<DiscountsModel> discount = [
  DiscountsModel(
      discount: "عرض \n 30% \n خصم", itemColor: const Color(0xff716B8C)),
  DiscountsModel(discount: "عرض \n 40% \n خصم", itemColor: Colors.blue),
  DiscountsModel(discount: "عرض \n 50% \n خصم", itemColor: Colors.red),
  DiscountsModel(
      discount: "اشتري 1 \n واحصل علي 1 \n مجانا", itemColor: Colors.orange),
  DiscountsModel(discount: "اقل \n 99 SAR", itemColor: const Color(0xff859C43)),
  DiscountsModel(
      discount: "اختيارات \n الشهر", itemColor: const Color(0xff24B3AC)),
];
