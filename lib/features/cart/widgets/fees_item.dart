import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class FeesItem extends StatelessWidget {
  const FeesItem({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(16),
      height: height / 5,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "4",
                    style: Styles.TextStyle18.copyWith(color: Colors.grey),
                  ),
                  Text("100.00",
                      style: Styles.TextStyle18.copyWith(color: Colors.grey)),
                  Text("Free",
                      style: Styles.TextStyle18.copyWith(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Text(
                    "البنود",
                    style: Styles.TextStyle18.copyWith(color: Colors.grey),
                  ),
                  Text("المجموع الفرعي",
                      style: Styles.TextStyle18.copyWith(color: Colors.grey)),
                  Text("رسوم التوصيل",
                      style: Styles.TextStyle18.copyWith(color: Colors.grey)),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "100.00 SAR",
                style: Styles.TextStyle24.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "الاجمالي",
                style: Styles.TextStyle24.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
