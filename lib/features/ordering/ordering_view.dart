import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/fruit_view_top_row.dart';

class OrderingView extends StatelessWidget {
  const OrderingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              FruitViewTopRow(
                  text: "ترتيب المسار",
                  color: Colors.black,
                  textColor: Colors.black),
              SizedBox(
                height: 16,
              ),
              OrderItem(),
              SizedBox(
                height: 18,
              ),
              TrackOrderItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: const Color(0xff29C17B),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 55,
            child: Icon(
              Icons.coffee_outlined,
              size: 60,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0D2204# : معرف الطلب",
                style: Styles.TextStyle18.copyWith(color: Colors.white),
              ),
              const Text(
                "تاريخ النشر 26 كانون الثاني (يناير) 2021",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الاجمالي 100 ريال",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'البنود : 15',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class TrackOrderItem extends StatelessWidget {
  const TrackOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "تم الطلب",
                style: Styles.TextStyle18.copyWith(color: Colors.green),
              ),
              Text(
                "2023 نوفمبر",
                style: Styles.TextStyle16.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Order",
                style: Styles.TextStyle18.copyWith(color: Colors.green),
              ),
              Text(
                "2023 نوفمبر",
                style: Styles.TextStyle16.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 32,
              ),
              Text("تم شحن الطللب",
                  style: Styles.TextStyle18.copyWith(color: Colors.green)),
              Text(
                "2023 نوفمبر",
                style: Styles.TextStyle16.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "خارج الخدمة",
                style: Styles.TextStyle18,
              ),
              Text(
                "قيد الانتظار",
                style: Styles.TextStyle16.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "أجل تسليم",
                style: Styles.TextStyle18,
              ),
              Text(
                "قيد الانتظار",
                style: Styles.TextStyle16.copyWith(color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                maxRadius: 28,
                backgroundColor: Colors.green,
                // backgroundColor: Colors.grey[400],
                child: Icon(
                  Icons.apps_outlined,
                  color: Colors.green[100],
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CircleAvatar(
                maxRadius: 28,
                backgroundColor: Colors.green,

                // backgroundColor: Colors.grey[400],
                child: Icon(
                  Icons.menu,
                  color: Colors.green[100],
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CircleAvatar(
                maxRadius: 28, backgroundColor: Colors.green,

                // backgroundColor: Colors.grey[400],
                child: Icon(
                  Icons.menu,
                  color: Colors.green[100],
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CircleAvatar(
                maxRadius: 28,
                backgroundColor: Colors.grey[400],
                child: const Icon(
                  Icons.menu,
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CircleAvatar(
                maxRadius: 28,
                backgroundColor: Colors.grey[400],
                child: const Icon(
                  Icons.task_alt_rounded,
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
